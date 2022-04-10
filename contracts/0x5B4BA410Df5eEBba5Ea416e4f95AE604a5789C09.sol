contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint128 stor7; offset 160
uint256 stor7;
uint16 stor8;
uint64 stor8; offset 16
uint64 stor8; offset 64

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor2 = code.data[5921 len 20]
    stor3 = code.data[5953 len 20]
    require ext_code.size(code.data[5921 len 20])
    call code.data[5921 len 20].0x9166cba4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor4 = ext_call.return_data[12 len 20] or Mask(96, 160, stor4)
    require ext_code.size(stor2)
    call stor2.sin() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor5 = ext_call.return_data[12 len 20] or Mask(96, 160, stor5)
    require ext_code.size(stor2)
    call stor2.skr() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor6 = ext_call.return_data[12 len 20] or Mask(96, 160, stor6)
    require ext_code.size(stor2)
    call stor2.0x84718d89 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor7.field_0) = Mask(96, 0, stor7.field_160)
    uint16(stor8.field_0) = 0
    stor8.field_16 % 281474976710656 = 15258789062500
    uint64(stor8.field_64) = 0
    return code.data[791 len 5118]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address tubAddress;
address pitAddress;
address saiAddress;
address sinAddress;
address skrAddress;
address jugAddress;
uint128 gap;

function sin() {
    return sinAddress
}

function skr() {
    return skrAddress
}

function tub() {
    return tubAddress
}

function gap() {
    return gap
}

function jug() {
    return jugAddress
}

function owner() {
    return owner
}

function sai() {
    return saiAddress
}

function authority() {
    return authorityAddress
}

function pit() {
    return pitAddress
}

function _fallback() payable {
    revert
}

function woe() {
    require ext_code.size(sinAddress)
    call sinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args pitAddress
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function joy() {
    require ext_code.size(saiAddress)
    call saiAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args pitAddress
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function fog() {
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args pitAddress
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function sub_420f2ed9(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    gap = uint128(arg1)
    require uint128(arg1) <= 105 * 10^16
    require gap >= 95 * 10^16
}

function s2s() {
    require ext_code.size(tubAddress)
    call tubAddress.0xbe38a4fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x51f91066 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x2755cd2d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x495d32cb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[16 len 16]
    require (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
    return uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
}

function ask() {
    require ext_code.size(tubAddress)
    call tubAddress.0xbe38a4fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x51f91066 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x2755cd2d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x495d32cb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[16 len 16]
    require (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
    require (uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18)
    return uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18)
}

function bid() {
    require ext_code.size(tubAddress)
    call tubAddress.0xbe38a4fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x51f91066 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x2755cd2d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x495d32cb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[16 len 16]
    require (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
    require uint128(-gap + 2 * 10^18) <= 2 * 10^18
    require (uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * uint128(-gap + 2 * 10^18)) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * uint128(-gap + 2 * 10^18)) + 5 * 10^17 / 10^18)
    return uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * uint128(-gap + 2 * 10^18)) + 5 * 10^17 / 10^18)
}

function sub_de3e7a9c(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.0x738fdd1a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 1
    require not ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.0x9f678cca with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(jugAddress)
    call jugAddress.0xe0cd1d69 with:
         gas gas_remaining - 710 wei
        args pitAddress
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0xbe38a4fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x51f91066 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x2755cd2d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x495d32cb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[16 len 16]
    require (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
    require uint128(-gap + 2 * 10^18) <= 2 * 10^18
    require (uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * uint128(-gap + 2 * 10^18)) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * uint128(-gap + 2 * 10^18)) + 5 * 10^17 / 10^18)
    require (uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * uint128(-gap + 2 * 10^18)) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18 == uint128((uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * uint128(-gap + 2 * 10^18)) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18)
    require ext_code.size(saiAddress)
    call saiAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args pitAddress
    require ext_call.success
    require uint128((uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(-gap + 2 * 10^18)) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18) <= ext_call.return_data[16 len 16]
    require ext_code.size(pitAddress)
    call pitAddress.0x6b2113cd with:
         gas gas_remaining - 710 wei
        args skrAddress, msg.sender, uint128(arg1)
    require ext_call.success
    require ext_code.size(pitAddress)
    call pitAddress.0x7261e469 with:
         gas gas_remaining - 710 wei
        args skrAddress, uint128(arg1)
    require ext_call.success
    require ext_code.size(pitAddress)
    call pitAddress.0x3c71a7c7 with:
         gas gas_remaining - 710 wei
        args saiAddress, msg.sender, uint128((uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(-gap + 2 * 10^18)) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18)
    require ext_call.success
}

function sub_90089adf(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.0x738fdd1a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 1
    require not ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.0x9f678cca with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(jugAddress)
    call jugAddress.0xe0cd1d69 with:
         gas gas_remaining - 710 wei
        args pitAddress
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args pitAddress
    require ext_call.success
    if uint128(arg1) <= ext_call.return_data[16 len 16]:
        require ext_code.size(tubAddress)
        call tubAddress.0xbe38a4fe with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x51f91066 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tubAddress)
        call tubAddress.0x2755cd2d with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x495d32cb with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[16 len 16]
        require (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
        require (uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18)
        require (uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18 == uint128((uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18)
    else:
        require ext_code.size(skrAddress)
        call skrAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args pitAddress
        require ext_call.success
        require ext_code.size(pitAddress)
        call pitAddress.0xbe29184f with:
             gas gas_remaining - 710 wei
            args skrAddress, uint128(uint128(arg1) - ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(tubAddress)
        call tubAddress.0xbe38a4fe with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x51f91066 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tubAddress)
        call tubAddress.0x2755cd2d with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x495d32cb with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[16 len 16]
        require (10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
        require (uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18)
        require (uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18 == uint128((uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) * gap) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18)
        require ext_code.size(sinAddress)
        call sinAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args pitAddress
        require ext_call.success
        require uint128((uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * gap) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18) <= ext_call.return_data[16 len 16]
    require ext_code.size(pitAddress)
    call pitAddress.0x3c71a7c7 with:
         gas gas_remaining - 710 wei
        args skrAddress, msg.sender, uint128(arg1)
    require ext_call.success
    require ext_code.size(pitAddress)
    call pitAddress.0x6b2113cd with:
         gas gas_remaining - 710 wei
        args saiAddress, msg.sender, uint128((uint128((uint128((10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * gap) + 5 * 10^17 / 10^18) * uint128(arg1)) + 5 * 10^17 / 10^18)
    require ext_call.success
    require ext_code.size(jugAddress)
    call jugAddress.0xe0cd1d69 with:
         gas gas_remaining - 710 wei
        args pitAddress
    require ext_call.success
}



}

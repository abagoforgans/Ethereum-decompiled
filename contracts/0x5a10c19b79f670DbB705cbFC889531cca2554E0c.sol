contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor6; offset 152
address stor6;
uint8 stor7; offset 152
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
uint16 stor12;
uint64 stor12; offset 80
uint64 stor12; offset 16
uint256 stor13;

function _fallback() payable {
    stor5 = 0x86dccc025e63f34b5d4435274eb3ea1639c6d843
    Mask(152, 0, stor6.field_0) = 0xca405026e9018c29c26cb081dcc9653428bfe9
    uint8(stor6.field_152) = 0
    Mask(152, 0, stor7.field_0) = 0x48d6225d1f3ea4385627efdc5b4709cab4a21c
    uint8(stor7.field_152) = 0
    stor8 = 0x6f2a8ee9452ba7d336b3fba03cac27f7818aead6
    stor9 = 0x9553be76e414f9f44bf1f91fa31b8e8477a87731
    stor10 = 0x6c65fb326e7734ba5508b5d043718288b43b9ed9
    stor11 = 0xcfe7e1665b1b699319e328fa2a2565d13d7f799d
    uint16(stor12.field_0) = 0
    uint64(stor12.field_16) = 1702588348388671875
    stor12.field_80 % 281474976710656 = 0
    require not msg.value
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor2 = code.data[6514 len 20]
    require ext_code.size(code.data[6514 len 20])
    call code.data[6514 len 20].0x7bd2bea7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor13 = ext_call.return_data[12 len 20] or Mask(96, 160, stor13)
    require ext_code.size(stor2)
    call stor2.0x9166cba4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor3 = ext_call.return_data[12 len 20] or Mask(96, 160, stor3)
    require ext_code.size(stor2)
    call stor2.skr() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor4 = ext_call.return_data[12 len 20] or Mask(96, 160, stor4)
    return code.data[822 len 5680]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address tubAddress;
address saiAddress;
address skrAddress;
address sub_acc91f48Address;
address sub_0f86c24bAddress;
address sub_e4885a34Address;
address marAddress;
address matAddress;
address sub_579be378Address;
address sub_aeee48c0Address;
uint128 payout;
address ethAddress;

function sub_0f86c24b(?) {
    return sub_0f86c24bAddress
}

function skr() {
    return skrAddress
}

function tub() {
    return tubAddress
}

function sub_579be378(?) {
    return sub_579be378Address
}

function mar() {
    return marAddress
}

function payout() {
    return payout
}

function eth() {
    return ethAddress
}

function owner() {
    return owner
}

function sai() {
    return saiAddress
}

function mat() {
    return matAddress
}

function sub_acc91f48(?) {
    return sub_acc91f48Address
}

function sub_aeee48c0(?) {
    return sub_aeee48c0Address
}

function authority() {
    return authorityAddress
}

function sub_e4885a34(?) {
    return sub_e4885a34Address
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
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
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function sub_c4f58c63(?) payable {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require msg.value == 2500 * 10^18
    require ext_code.size(ethAddress)
    call ethAddress.deposit() with:
       value 2500 * 10^18 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x80b6132 with:
         gas gas_remaining - 710 wei
        args 1000000000 * 10^18
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x56371435 with:
         gas gas_remaining - 710 wei
        args payout
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0xbdf6e771 with:
         gas gas_remaining - 710 wei
        args 1500000000 * 10^18
    require ext_call.success
    require ext_code.size(ethAddress)
    call ethAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tubAddress, 2500 * 10^18
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.')]:T' with:
         gas gas_remaining - 710 wei
        args 2500 * 10^18
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x49955431 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.0xfcfff16f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tubAddress, 2500 * 10^18
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x7c241aa with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], 2500 * 10^18
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0xa22664ad with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], payout
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args sub_acc91f48Address, 66550 * 10^18
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args sub_0f86c24bAddress, 118083 * 10^16
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args matAddress, 10000 * 10^18
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args marAddress, 10000 * 10^18
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args sub_e4885a34Address, 11000 * 10^18
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args sub_579be378Address, 10000 * 10^18
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args sub_aeee48c0Address, 2850 * 10^18
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == payout
    require ext_code.size(tubAddress)
    call tubAddress.0xcbd5accc with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x4b311e54 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tubAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tubAddress)
    call tubAddress.0x69855358 with:
         gas gas_remaining - 710 wei
        args uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(ethAddress)
    call ethAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(ethAddress)
    call ethAddress.withdraw(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == payout
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(ethAddress)
    call ethAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require not ext_call.return_data[0]
    require not eth.balance(this.address)
}



}

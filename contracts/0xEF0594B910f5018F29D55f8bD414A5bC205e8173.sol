contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
address stor10;
uint32 stor11;
uint32 stor11; offset 96
uint128 stor11; offset 24
uint32 stor12;
uint32 stor12; offset 224
uint64 stor12; offset 96
uint128 stor12; offset 24
uint128 stor12; offset 152
uint64 stor13; offset 136
uint32 stor14;
uint32 stor14; offset 96
uint128 stor14; offset 24
uint64 stor17;
uint256 stor17;

function _fallback() payable {
    uint256(stor17) = 'T`' or Mask(128, 128, uint256(stor17)) or uint64(stor17)
    require not msg.value
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor8 = code.data[13343 len 20]
    require ext_code.size(code.data[13343 len 20])
    call code.data[13343 len 20].0x7bd2bea7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor7 = ext_call.return_data[12 len 20] or Mask(96, 160, stor7)
    require ext_code.size(stor8)
    call stor8.skr() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor6 = ext_call.return_data[12 len 20] or Mask(96, 160, stor6)
    stor5 = code.data[13375 len 20]
    require ext_code.size(code.data[13375 len 20])
    call code.data[13375 len 20].0x9166cba4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor3 = ext_call.return_data[12 len 20] or Mask(96, 160, stor3)
    require ext_code.size(stor5)
    call stor5.sin() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor4 = ext_call.return_data[12 len 20] or Mask(96, 160, stor4)
    stor9 = code.data[13407 len 20]
    stor10 = code.data[13439 len 20]
    stor11.field_0 % 16777216 = 0
    Mask(72, 0, stor11.field_24) = 59604644775390625000
    uint32(stor11.field_96) = 0
    stor12.field_0 % 16777216 = 0
    Mask(72, 0, stor12.field_24) = 59604644775390625000
    stor12.field_96 % 72057594037927936 = 0
    Mask(72, 0, stor12.field_152) = 59604644775390625000
    uint32(stor12.field_224) = 0
    stor14.field_0 % 16777216 = 0
    Mask(72, 0, stor14.field_24) = 59604644775390625000
    uint32(stor14.field_96) = 0
    stor2 = code.data[13471 len 20]
    require ext_code.size(code.data[13471 len 20])
    call code.data[13471 len 20].0x143e55e0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor13 = uint64(ext_call.return_data[0])
    return code.data[1104 len 12227]
}



// =====================  Runtime code  =====================


#
#  - sub_a22664ad(?)
#  - shut(bytes32 arg1)
#
address authorityAddress;
address owner;
address tipAddress;
address saiAddress;
address sinAddress;
address jugAddress;
address skrAddress;
address gemAddress;
address jarAddress;
address potAddress;
address pitAddress;
uint128 axe;
uint128 hat; offset 128
uint128 mat;
uint128 tax; offset 128
uint8 reg;
uint64 rho; offset 136
uint128 stor13; offset 9
uint128 fit; offset 8
uint128 stor14; offset 1
uint128 stor14;
uint256 cupi;
mapping of struct ink;
uint64 caged;
uint64 cooldown; offset 64
uint256 stor17;

function sin() {
    return sinAddress
}

function skr() {
    return skrAddress
}

function ink(bytes32 arg1) {
    return ink[arg1].field_384
}

function rho() {
    return rho
}

function tip() {
    return tipAddress
}

function cupi() {
    return cupi
}

function pot() {
    return potAddress
}

function axe() {
    return axe
}

function reg() {
    require reg <= 1
    return reg
}

function cooldown() {
    return cooldown
}

function gem() {
    return gemAddress
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

function tax() {
    return tax
}

function mat() {
    return mat
}

function jar() {
    return jarAddress
}

function authority() {
    return authorityAddress
}

function fit() {
    return fit
}

function lad(bytes32 arg1) {
    return ink[arg1].field_0
}

function pit() {
    return pitAddress
}

function caged() {
    return caged
}

function cups(bytes32 arg1) {
    return ink[arg1].field_0, ink[arg1].field_256, ink[arg1].field_384
}

function hat() {
    return hat
}

function _fallback() payable {
    revert
}

function air() {
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args jarAddress
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function ice() {
    require ext_code.size(sinAddress)
    call sinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args potAddress
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function pie() {
    require ext_code.size(gemAddress)
    call gemAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args jarAddress
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function tag() {
    require reg <= 1
    if reg:
        return fit
    require ext_code.size(jarAddress)
    call jarAddress.0x51f91066 with:
         gas gas_remaining - 710 wei
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

function sub_56371435(?) {
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
    hat = uint128(arg1)
}

function setCooldown(uint64 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    cooldown = arg1
}

function sub_bdf6e771(?) {
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
    mat = uint128(arg1)
    require 1000000000 * 10^18 <= axe
    require axe <= mat
}

function sub_080b6132(?) {
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
    axe = uint128(arg1)
    require 1000000000 * 10^18 <= uint128(arg1)
    require axe <= mat
}

function give(bytes32 arg1, address arg2) {
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
    require ink[arg1].field_0 == msg.sender
    require arg2
    ink[arg1].field_0 = arg2
}

function open() {
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
    require reg <= 1
    require not reg
    cupi++
    ink[stor15 + 1].field_0 = msg.sender
    emit LogNewCup((cupi + 1), msg.sender);
    return (cupi + 1)
}

function cage() {
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
    require reg <= 1
    require not reg
    reg = 1
    require ext_code.size(jarAddress)
    call jarAddress.0x51f91066 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    fit = uint128(ext_call.return_data[0])
    require ext_code.size(tipAddress)
    call tipAddress.0x143e55e0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor17 = ext_call.return_data[24 len 8] or Mask(192, 64, stor17)
}

function sub_295d3a54(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender == this.address:
        if reg <= 1:
            require not reg
            if ext_code.size(jarAddress):
                call jarAddress.0xceae3abd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, uint128(arg1)
                if ext_call.success:
    else:
        if owner == msg.sender:
            if reg <= 1:
                require not reg
                if ext_code.size(jarAddress):
                    call jarAddress.0xceae3abd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, uint128(arg1)
                    if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if reg <= 1:
                        require not reg
                        if ext_code.size(jarAddress):
                            call jarAddress.0xceae3abd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, uint128(arg1)
                            if ext_call.success:
    revert
}

function sub_07c241aa(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender == this.address:
        if reg <= 1:
            require not reg
            require ink[arg1].field_0 == msg.sender
            if uint128(ink[arg1].field_384 + uint128(arg2)) >= ink[arg1].field_384:
                ink[arg1].field_384 = uint128(ink[arg1].field_384 + uint128(arg2))
                if ext_code.size(jarAddress):
                    call jarAddress.0x6b2113cd with:
                         gas gas_remaining - 710 wei
                        args skrAddress, msg.sender, uint128(arg2)
                    if ext_call.success:
    else:
        if owner == msg.sender:
            if reg <= 1:
                require not reg
                require ink[arg1].field_0 == msg.sender
                if uint128(ink[arg1].field_384 + uint128(arg2)) >= ink[arg1].field_384:
                    ink[arg1].field_384 = uint128(ink[arg1].field_384 + uint128(arg2))
                    if ext_code.size(jarAddress):
                        call jarAddress.0x6b2113cd with:
                             gas gas_remaining - 710 wei
                            args skrAddress, msg.sender, uint128(arg2)
                        if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if reg <= 1:
                        require not reg
                        require ink[arg1].field_0 == msg.sender
                        if uint128(ink[arg1].field_384 + uint128(arg2)) >= ink[arg1].field_384:
                            ink[arg1].field_384 = uint128(ink[arg1].field_384 + uint128(arg2))
                            if ext_code.size(jarAddress):
                                call jarAddress.0x6b2113cd with:
                                     gas gas_remaining - 710 wei
                                    args skrAddress, msg.sender, uint128(arg2)
                                if ext_call.success:
    revert
}

function drip() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require reg <= 1
    if not reg:
        if tax != 1:
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if bool(ext_call.return_data[0] - rho) != 0:
                s = tax
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            else:
                s = 1000000000 * 10^18
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            require (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(stor14.field_0)
            require (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))
            require (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(jugAddress)
            call jugAddress.0xa57d9ad3 with:
                 gas gas_remaining - 710 wei
                args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(potAddress)
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            rho = uint64(ext_call.return_data[0])
}

function chi() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require reg <= 1
    if not reg:
        if tax != 1:
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if bool(ext_call.return_data[0] - rho) != 0:
                s = tax
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            else:
                s = 1000000000 * 10^18
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            require (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(stor14.field_0)
            require (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))
            require (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(jugAddress)
            call jugAddress.0xa57d9ad3 with:
                 gas gas_remaining - 710 wei
                args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(potAddress)
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            rho = uint64(ext_call.return_data[0])
    return uint128(stor14.field_0)
}

function sub_f5893bd0(?) {
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
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require reg <= 1
    if not reg:
        if tax != 1:
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if bool(ext_call.return_data[0] - rho) != 0:
                s = tax
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            else:
                s = 1000000000 * 10^18
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            require (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(stor14.field_0)
            require (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))
            require (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(jugAddress)
            call jugAddress.0xa57d9ad3 with:
                 gas gas_remaining - 710 wei
                args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(potAddress)
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            rho = uint64(ext_call.return_data[0])
    tax = uint128(arg1)
    require 1000000000 * 10^18 <= uint128(arg1)
    require tax < 1000200000 * 10^18
}

function tab(bytes32 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require reg <= 1
    if reg:
        if (ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18):
            return uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
    else:
        if 1 == tax:
            if (ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18):
                return uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
        else:
            if ext_code.size(tipAddress):
                call tipAddress.0x143e55e0 with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if bool(ext_call.return_data[0] - rho) != 0:
                        s = tax
                        idx = uint64(ext_call.return_data[0] - rho) / 2
                        t = tax
                        while uint64(idx):
                            require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                            if not bool(idx):
                                s = s
                                idx = uint64(idx) / 2
                                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                            s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = uint64(idx) / 2
                            t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    else:
                        s = 1000000000 * 10^18
                        idx = uint64(ext_call.return_data[0] - rho) / 2
                        t = tax
                        while uint64(idx):
                            require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                            if not bool(idx):
                                s = s
                                idx = uint64(idx) / 2
                                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                            s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = uint64(idx) / 2
                            t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    if (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18):
                        if ext_code.size(sinAddress):
                            call sinAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args potAddress
                            if ext_call.success:
                                if uint128(stor14.field_0):
                                    if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                        if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                            if ext_code.size(sinAddress):
                                                call sinAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args potAddress
                                                if ext_call.success:
                                                    if uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                        if ext_code.size(jugAddress):
                                                            call jugAddress.0xa57d9ad3 with:
                                                                 gas gas_remaining - 710 wei
                                                                args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                            if ext_call.success:
                                                                if ext_code.size(potAddress):
                                                                    call potAddress.0x3c71a7c7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                                    if ext_call.success:
                                                                        uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                        if ext_code.size(tipAddress):
                                                                            call tipAddress.0x143e55e0 with:
                                                                                 gas gas_remaining - 710 wei
                                                                            if ext_call.success:
                                                                                rho = uint64(ext_call.return_data[0])
                                                                                if (ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                    return uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
    revert
}

function sub_67c48dd6(?) {
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
    require ink[arg1].field_0 == msg.sender
    require uint128(ink[arg1].field_384 - uint128(arg2)) <= ink[arg1].field_384
    ink[arg1].field_384 = uint128(ink[arg1].field_384 - uint128(arg2))
    require ext_code.size(jarAddress)
    call jarAddress.0x3c71a7c7 with:
         gas gas_remaining - 710 wei
        args skrAddress, msg.sender, uint128(arg2)
    require ext_call.success
    require ext_code.size(jarAddress)
    call jarAddress.0x51f91066 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18)
    require ext_code.size(tipAddress)
    call tipAddress.0x495d32cb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require reg <= 1
    if not reg:
        if tax != 1:
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if bool(ext_call.return_data[0] - rho) != 0:
                s = tax
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            else:
                s = 1000000000 * 10^18
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            require (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(stor14.field_0)
            require (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))
            require (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(jugAddress)
            call jugAddress.0xa57d9ad3 with:
                 gas gas_remaining - 710 wei
                args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(potAddress)
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            rho = uint64(ext_call.return_data[0])
    require (ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
    require (uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
    require (uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    require uint128((uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18) >= uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function exit(uint128 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender == this.address:
        if ext_code.size(sinAddress):
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            if ext_call.success:
                if ext_call.return_data[16 len 16]:
                    if ext_code.size(tipAddress):
                        call tipAddress.0x143e55e0 with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if reg <= 1:
                                if not reg:
                                    if ext_code.size(jarAddress):
                                        call jarAddress.0x12e5ff77 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, arg1
                                        if ext_call.success:
                                else:
                                    if reg <= 1:
                                        require reg == 1
                                        if uint128(ext_call.return_data[0]):
                                            require ext_call.return_data[24 len 8] > uint64(cooldown + caged)
                                        if ext_code.size(jarAddress):
                                            call jarAddress.0x12e5ff77 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, arg1
                                            if ext_call.success:
                else:
                    if ext_code.size(skrAddress):
                        call skrAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args pitAddress
                        if ext_call.success:
                            if ext_code.size(tipAddress):
                                call tipAddress.0x143e55e0 with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if reg <= 1:
                                        if not reg:
                                            if ext_code.size(jarAddress):
                                                call jarAddress.0x12e5ff77 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, arg1
                                                if ext_call.success:
                                        else:
                                            if reg <= 1:
                                                require reg == 1
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[24 len 8] > uint64(cooldown + caged)
                                                if ext_code.size(jarAddress):
                                                    call jarAddress.0x12e5ff77 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, arg1
                                                    if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(sinAddress):
                call sinAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args potAddress
                if ext_call.success:
                    if ext_call.return_data[16 len 16]:
                        if ext_code.size(tipAddress):
                            call tipAddress.0x143e55e0 with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if reg <= 1:
                                    if not reg:
                                        if ext_code.size(jarAddress):
                                            call jarAddress.0x12e5ff77 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, arg1
                                            if ext_call.success:
                                    else:
                                        if reg <= 1:
                                            require reg == 1
                                            if uint128(ext_call.return_data[0]):
                                                require ext_call.return_data[24 len 8] > uint64(cooldown + caged)
                                            if ext_code.size(jarAddress):
                                                call jarAddress.0x12e5ff77 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, arg1
                                                if ext_call.success:
                    else:
                        if ext_code.size(skrAddress):
                            call skrAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args pitAddress
                            if ext_call.success:
                                if ext_code.size(tipAddress):
                                    call tipAddress.0x143e55e0 with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        if reg <= 1:
                                            if not reg:
                                                if ext_code.size(jarAddress):
                                                    call jarAddress.0x12e5ff77 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, arg1
                                                    if ext_call.success:
                                            else:
                                                if reg <= 1:
                                                    require reg == 1
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[24 len 8] > uint64(cooldown + caged)
                                                    if ext_code.size(jarAddress):
                                                        call jarAddress.0x12e5ff77 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, arg1
                                                        if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(sinAddress):
                        call sinAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args potAddress
                        if ext_call.success:
                            if ext_call.return_data[16 len 16]:
                                if ext_code.size(tipAddress):
                                    call tipAddress.0x143e55e0 with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        if reg <= 1:
                                            if not reg:
                                                if ext_code.size(jarAddress):
                                                    call jarAddress.0x12e5ff77 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, arg1
                                                    if ext_call.success:
                                            else:
                                                if reg <= 1:
                                                    require reg == 1
                                                    if uint128(ext_call.return_data[0]):
                                                        require ext_call.return_data[24 len 8] > uint64(cooldown + caged)
                                                    if ext_code.size(jarAddress):
                                                        call jarAddress.0x12e5ff77 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, arg1
                                                        if ext_call.success:
                            else:
                                if ext_code.size(skrAddress):
                                    call skrAddress.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args pitAddress
                                    if ext_call.success:
                                        if ext_code.size(tipAddress):
                                            call tipAddress.0x143e55e0 with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if reg <= 1:
                                                    if not reg:
                                                        if ext_code.size(jarAddress):
                                                            call jarAddress.0x12e5ff77 with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, arg1
                                                            if ext_call.success:
                                                    else:
                                                        if reg <= 1:
                                                            require reg == 1
                                                            if ext_call.return_data[0]:
                                                                require ext_call.return_data[24 len 8] > uint64(cooldown + caged)
                                                            if ext_code.size(jarAddress):
                                                                call jarAddress.0x12e5ff77 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, arg1
                                                                if ext_call.success:
    revert
}

function safe(bytes32 arg1) {
    require ext_code.size(jarAddress)
    call jarAddress.0x51f91066 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18)
    require ext_code.size(tipAddress)
    call tipAddress.0x495d32cb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require reg <= 1
    if reg:
        if (ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18):
            if (uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                if (uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
                    return uint128((uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18) >= uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    else:
        if 1 == tax:
            if (ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18):
                if (uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                    if (uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
                        return uint128((uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18) >= uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
        else:
            if ext_code.size(tipAddress):
                call tipAddress.0x143e55e0 with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if bool(ext_call.return_data[0] - rho) != 0:
                        s = tax
                        idx = uint64(ext_call.return_data[0] - rho) / 2
                        t = tax
                        while uint64(idx):
                            require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                            if not bool(idx):
                                s = s
                                idx = uint64(idx) / 2
                                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                            s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = uint64(idx) / 2
                            t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    else:
                        s = 1000000000 * 10^18
                        idx = uint64(ext_call.return_data[0] - rho) / 2
                        t = tax
                        while uint64(idx):
                            require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                            if not bool(idx):
                                s = s
                                idx = uint64(idx) / 2
                                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                continue 
                            require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                            s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                            idx = uint64(idx) / 2
                            t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                            continue 
                    if (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18):
                        if ext_code.size(sinAddress):
                            call sinAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args potAddress
                            if ext_call.success:
                                if uint128(stor14.field_0):
                                    if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                        if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                            if ext_code.size(sinAddress):
                                                call sinAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args potAddress
                                                if ext_call.success:
                                                    if uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                        if ext_code.size(jugAddress):
                                                            call jugAddress.0xa57d9ad3 with:
                                                                 gas gas_remaining - 710 wei
                                                                args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                            if ext_call.success:
                                                                if ext_code.size(potAddress):
                                                                    call potAddress.0x3c71a7c7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                                    if ext_call.success:
                                                                        uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                        if ext_code.size(tipAddress):
                                                                            call tipAddress.0x143e55e0 with:
                                                                                 gas gas_remaining - 710 wei
                                                                            if ext_call.success:
                                                                                rho = uint64(ext_call.return_data[0])
                                                                                if (ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                    if (uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18):
                                                                                        if (uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                            return uint128((uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18) >= uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    revert
}

function bite(bytes32 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(jarAddress)
    call jarAddress.0x51f91066 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18)
    require ext_code.size(tipAddress)
    call tipAddress.0x495d32cb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require reg <= 1
    if not reg:
        if tax != 1:
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if bool(ext_call.return_data[0] - rho) != 0:
                s = tax
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            else:
                s = 1000000000 * 10^18
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            require (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(stor14.field_0)
            require (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))
            require (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(jugAddress)
            call jugAddress.0xa57d9ad3 with:
                 gas gas_remaining - 710 wei
                args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(potAddress)
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            rho = uint64(ext_call.return_data[0])
    require (ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
    require (uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18)
    require (uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    if uint128((uint128(ext_call.return_data[0]) * ink[arg1].field_384) + 5 * 10^17 / 10^18) >= uint128((uint128((uint128(ext_call.return_data[0]) * uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 5 * 10^17 / 10^18) * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
        require reg <= 1
        require reg == 1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require reg <= 1
    if not reg:
        if tax != 1:
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if bool(ext_call.return_data[0] - rho) != 0:
                s = tax
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            else:
                s = 1000000000 * 10^18
                idx = uint64(ext_call.return_data[0] - rho) / 2
                t = tax
                while uint64(idx):
                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not bool(idx):
                        s = s
                        idx = uint64(idx) / 2
                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                        continue 
                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                    idx = uint64(idx) / 2
                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                    continue 
            require (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(stor14.field_0)
            require (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))
            require (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(sinAddress)
            call sinAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args potAddress
            require ext_call.success
            require uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(jugAddress)
            call jugAddress.0xa57d9ad3 with:
                 gas gas_remaining - 710 wei
                args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(potAddress)
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
            require ext_call.success
            uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
            require ext_code.size(tipAddress)
            call tipAddress.0x143e55e0 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            rho = uint64(ext_call.return_data[0])
    require (ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_code.size(potAddress)
    call potAddress.0x3c71a7c7 with:
         gas gas_remaining - 710 wei
        args sinAddress, pitAddress, uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_call.success
    ink[arg1].field_256 = 0
    require (uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_code.size(tipAddress)
    call tipAddress.0x495d32cb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
    require reg <= 1
    if reg:
        require fit
        require (10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) + stor13 / fit == uint128((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)) + stor13 / fit)
        require ext_code.size(jarAddress)
        if ink[arg1].field_384 >= uint128((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + stor13 / fit):
            call jarAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args skrAddress, pitAddress, uint128((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + stor13 / fit)
            require ext_call.success
            require uint128(ink[arg1].field_384 - ((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + stor13 / fit)) <= ink[arg1].field_384
            ink[arg1].field_384 = uint128(ink[arg1].field_384 - ((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + stor13 / fit))
        else:
            call jarAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args skrAddress, pitAddress, ink[arg1].field_384
            require ext_call.success
            require 0 <= ink[arg1].field_384
            ink[arg1].field_384 = 0
    else:
        require ext_code.size(jarAddress)
        call jarAddress.0x51f91066 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[16 len 16]
        require (10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
        require ext_code.size(jarAddress)
        if ink[arg1].field_384 >= uint128((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])):
            call jarAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args skrAddress, pitAddress, uint128((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
            require ext_call.success
            require uint128(ink[arg1].field_384 - ((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) <= ink[arg1].field_384
            ink[arg1].field_384 = uint128(ink[arg1].field_384 - ((10^18 * uint128((uint128((uint128((ink[arg1].field_256 * uint128(stor14.field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) * axe) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
        else:
            call jarAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args skrAddress, pitAddress, ink[arg1].field_384
            require ext_call.success
            require 0 <= ink[arg1].field_384
            ink[arg1].field_384 = 0
}

function sub_6299c83e(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender == this.address:
        if reg <= 1:
            require not reg
            require ink[arg1].field_0 == msg.sender
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            if reg <= 1:
                if reg:
                    if uint128(stor14.field_0):
                        if (1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                            if uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))) <= ink[arg1].field_256:
                                ink[arg1].field_256 = uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)))
                                if ext_code.size(potAddress):
                                    call potAddress.0x6b2113cd with:
                                         gas gas_remaining - 710 wei
                                        args saiAddress, msg.sender, uint128(arg2)
                                    if ext_call.success:
                                        if ext_code.size(jugAddress):
                                            call jugAddress.0x379f5217 with:
                                                 gas gas_remaining - 710 wei
                                                args potAddress, uint128(arg2)
                                            if ext_call.success:
                else:
                    if 1 == tax:
                        if uint128(stor14.field_0):
                            if (1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                if uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))) <= ink[arg1].field_256:
                                    ink[arg1].field_256 = uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)))
                                    if ext_code.size(potAddress):
                                        call potAddress.0x6b2113cd with:
                                             gas gas_remaining - 710 wei
                                            args saiAddress, msg.sender, uint128(arg2)
                                        if ext_call.success:
                                            if ext_code.size(jugAddress):
                                                call jugAddress.0x379f5217 with:
                                                     gas gas_remaining - 710 wei
                                                    args potAddress, uint128(arg2)
                                                if ext_call.success:
                    else:
                        if ext_code.size(tipAddress):
                            call tipAddress.0x143e55e0 with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if bool(ext_call.return_data[0] - rho) != 0:
                                    s = tax
                                    idx = uint64(ext_call.return_data[0] - rho) / 2
                                    t = tax
                                    while uint64(idx):
                                        require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                        if not bool(idx):
                                            s = s
                                            idx = uint64(idx) / 2
                                            t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                            continue 
                                        require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                        s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                                        idx = uint64(idx) / 2
                                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                        continue 
                                else:
                                    s = 1000000000 * 10^18
                                    idx = uint64(ext_call.return_data[0] - rho) / 2
                                    t = tax
                                    while uint64(idx):
                                        require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                        if not bool(idx):
                                            s = s
                                            idx = uint64(idx) / 2
                                            t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                            continue 
                                        require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                        s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                                        idx = uint64(idx) / 2
                                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                        continue 
                                if (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(sinAddress):
                                        call sinAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args potAddress
                                        if ext_call.success:
                                            if uint128(stor14.field_0):
                                                if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                                    if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                        if ext_code.size(sinAddress):
                                                            call sinAddress.0x70a08231 with:
                                                                 gas gas_remaining - 710 wei
                                                                args potAddress
                                                            if ext_call.success:
                                                                if uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                    if ext_code.size(jugAddress):
                                                                        call jugAddress.0xa57d9ad3 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                                        if ext_call.success:
                                                                            if ext_code.size(potAddress):
                                                                                call potAddress.0x3c71a7c7 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                                                if ext_call.success:
                                                                                    uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                    if ext_code.size(tipAddress):
                                                                                        call tipAddress.0x143e55e0 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                        if ext_call.success:
                                                                                            rho = uint64(ext_call.return_data[0])
                                                                                            if uint128(stor14.field_0):
                                                                                                if (1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                                                                                    if uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))) <= ink[arg1].field_256:
                                                                                                        ink[arg1].field_256 = uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)))
                                                                                                        if ext_code.size(potAddress):
                                                                                                            call potAddress.0x6b2113cd with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args saiAddress, msg.sender, uint128(arg2)
                                                                                                            if ext_call.success:
                                                                                                                if ext_code.size(jugAddress):
                                                                                                                    call jugAddress.0x379f5217 with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args potAddress, uint128(arg2)
                                                                                                                    if ext_call.success:
    else:
        if owner == msg.sender:
            if reg <= 1:
                require not reg
                require ink[arg1].field_0 == msg.sender
                emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                if reg <= 1:
                    if reg:
                        if uint128(stor14.field_0):
                            if (1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                if uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))) <= ink[arg1].field_256:
                                    ink[arg1].field_256 = uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)))
                                    if ext_code.size(potAddress):
                                        call potAddress.0x6b2113cd with:
                                             gas gas_remaining - 710 wei
                                            args saiAddress, msg.sender, uint128(arg2)
                                        if ext_call.success:
                                            if ext_code.size(jugAddress):
                                                call jugAddress.0x379f5217 with:
                                                     gas gas_remaining - 710 wei
                                                    args potAddress, uint128(arg2)
                                                if ext_call.success:
                    else:
                        if 1 == tax:
                            if uint128(stor14.field_0):
                                if (1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                    if uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))) <= ink[arg1].field_256:
                                        ink[arg1].field_256 = uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)))
                                        if ext_code.size(potAddress):
                                            call potAddress.0x6b2113cd with:
                                                 gas gas_remaining - 710 wei
                                                args saiAddress, msg.sender, uint128(arg2)
                                            if ext_call.success:
                                                if ext_code.size(jugAddress):
                                                    call jugAddress.0x379f5217 with:
                                                         gas gas_remaining - 710 wei
                                                        args potAddress, uint128(arg2)
                                                    if ext_call.success:
                        else:
                            if ext_code.size(tipAddress):
                                call tipAddress.0x143e55e0 with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if bool(ext_call.return_data[0] - rho) != 0:
                                        s = tax
                                        idx = uint64(ext_call.return_data[0] - rho) / 2
                                        t = tax
                                        while uint64(idx):
                                            require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                            if not bool(idx):
                                                s = s
                                                idx = uint64(idx) / 2
                                                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                                continue 
                                            require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                            s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                                            idx = uint64(idx) / 2
                                            t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                            continue 
                                    else:
                                        s = 1000000000 * 10^18
                                        idx = uint64(ext_call.return_data[0] - rho) / 2
                                        t = tax
                                        while uint64(idx):
                                            require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                            if not bool(idx):
                                                s = s
                                                idx = uint64(idx) / 2
                                                t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                                continue 
                                            require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                            s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                                            idx = uint64(idx) / 2
                                            t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                            continue 
                                    if (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                        if ext_code.size(sinAddress):
                                            call sinAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args potAddress
                                            if ext_call.success:
                                                if uint128(stor14.field_0):
                                                    if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                                        if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                            if ext_code.size(sinAddress):
                                                                call sinAddress.0x70a08231 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args potAddress
                                                                if ext_call.success:
                                                                    if uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                        if ext_code.size(jugAddress):
                                                                            call jugAddress.0xa57d9ad3 with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                                            if ext_call.success:
                                                                                if ext_code.size(potAddress):
                                                                                    call potAddress.0x3c71a7c7 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                                                    if ext_call.success:
                                                                                        uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                        if ext_code.size(tipAddress):
                                                                                            call tipAddress.0x143e55e0 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                            if ext_call.success:
                                                                                                rho = uint64(ext_call.return_data[0])
                                                                                                if uint128(stor14.field_0):
                                                                                                    if (1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                                                                                        if uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))) <= ink[arg1].field_256:
                                                                                                            ink[arg1].field_256 = uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)))
                                                                                                            if ext_code.size(potAddress):
                                                                                                                call potAddress.0x6b2113cd with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args saiAddress, msg.sender, uint128(arg2)
                                                                                                                if ext_call.success:
                                                                                                                    if ext_code.size(jugAddress):
                                                                                                                        call jugAddress.0x379f5217 with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                            args potAddress, uint128(arg2)
                                                                                                                        if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if reg <= 1:
                        require not reg
                        require ink[arg1].field_0 == msg.sender
                        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                        if reg <= 1:
                            if reg:
                                if uint128(stor14.field_0):
                                    if (1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                        if uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))) <= ink[arg1].field_256:
                                            ink[arg1].field_256 = uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)))
                                            if ext_code.size(potAddress):
                                                call potAddress.0x6b2113cd with:
                                                     gas gas_remaining - 710 wei
                                                    args saiAddress, msg.sender, uint128(arg2)
                                                if ext_call.success:
                                                    if ext_code.size(jugAddress):
                                                        call jugAddress.0x379f5217 with:
                                                             gas gas_remaining - 710 wei
                                                            args potAddress, uint128(arg2)
                                                        if ext_call.success:
                            else:
                                if 1 == tax:
                                    if uint128(stor14.field_0):
                                        if (1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                            if uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))) <= ink[arg1].field_256:
                                                ink[arg1].field_256 = uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)))
                                                if ext_code.size(potAddress):
                                                    call potAddress.0x6b2113cd with:
                                                         gas gas_remaining - 710 wei
                                                        args saiAddress, msg.sender, uint128(arg2)
                                                    if ext_call.success:
                                                        if ext_code.size(jugAddress):
                                                            call jugAddress.0x379f5217 with:
                                                                 gas gas_remaining - 710 wei
                                                                args potAddress, uint128(arg2)
                                                            if ext_call.success:
                                else:
                                    if ext_code.size(tipAddress):
                                        call tipAddress.0x143e55e0 with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if bool(ext_call.return_data[0] - rho) != 0:
                                                s = tax
                                                idx = uint64(ext_call.return_data[0] - rho) / 2
                                                t = tax
                                                while uint64(idx):
                                                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                    if not bool(idx):
                                                        s = s
                                                        idx = uint64(idx) / 2
                                                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                                        continue 
                                                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                                                    idx = uint64(idx) / 2
                                                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                                    continue 
                                            else:
                                                s = 1000000000 * 10^18
                                                idx = uint64(ext_call.return_data[0] - rho) / 2
                                                t = tax
                                                while uint64(idx):
                                                    require (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                    if not bool(idx):
                                                        s = s
                                                        idx = uint64(idx) / 2
                                                        t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                                        continue 
                                                    require (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                    s = (uint128(s) * uint128((uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18
                                                    idx = uint64(idx) / 2
                                                    t = (uint128(t) * uint128(t)) + 500000000 * 10^18 / 1000000000 * 10^18
                                                    continue 
                                            if (uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                if ext_code.size(sinAddress):
                                                    call sinAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args potAddress
                                                    if ext_call.success:
                                                        if uint128(stor14.field_0):
                                                            if (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                                                if (uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                    if ext_code.size(sinAddress):
                                                                        call sinAddress.0x70a08231 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args potAddress
                                                                        if ext_call.success:
                                                                            if uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]) <= uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                if ext_code.size(jugAddress):
                                                                                    call jugAddress.0xa57d9ad3 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args potAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(potAddress):
                                                                                            call potAddress.0x3c71a7c7 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args saiAddress, pitAddress, uint128(((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)) * uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
                                                                                            if ext_call.success:
                                                                                                uint128(stor14.field_0) = uint128((uint128(stor14.field_0) * uint128(s)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                if ext_code.size(tipAddress):
                                                                                                    call tipAddress.0x143e55e0 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                    if ext_call.success:
                                                                                                        rho = uint64(ext_call.return_data[0])
                                                                                                        if uint128(stor14.field_0):
                                                                                                            if (1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0) == uint128((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)):
                                                                                                                if uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0))) <= ink[arg1].field_256:
                                                                                                                    ink[arg1].field_256 = uint128(ink[arg1].field_256 - ((1000000000 * 10^18 * uint128(arg2)) + Mask(127, 0, stor14.field_1) / uint128(stor14.field_0)))
                                                                                                                    if ext_code.size(potAddress):
                                                                                                                        call potAddress.0x6b2113cd with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                            args saiAddress, msg.sender, uint128(arg2)
                                                                                                                        if ext_call.success:
                                                                                                                            if ext_code.size(jugAddress):
                                                                                                                                call jugAddress.0x379f5217 with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args potAddress, uint128(arg2)
                                                                                                                                if ext_call.success:
    revert
}



}

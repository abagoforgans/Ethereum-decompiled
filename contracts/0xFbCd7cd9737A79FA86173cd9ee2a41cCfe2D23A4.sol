contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
uint32 stor8;
uint32 stor8; offset 96
uint128 stor8; offset 24
uint32 stor9;
uint32 stor9; offset 96
uint128 stor9; offset 24

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor6 = code.data[14470 len 20]
    stor2 = code.data[14502 len 20]
    stor3 = code.data[14534 len 20]
    stor5 = code.data[14566 len 20]
    stor4 = code.data[14598 len 20]
    stor8.field_0 % 16777216 = 0
    Mask(72, 0, stor8.field_24) = 59604644775390625000
    uint32(stor8.field_96) = 0
    stor9.field_0 % 16777216 = 0
    Mask(72, 0, stor9.field_24) = 59604644775390625000
    uint32(stor9.field_96) = 0
    stor7 = code.data[14630 len 20]
    return code.data[305 len 14153]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address saiAddress;
address sinAddress;
address potAddress;
address skrAddress;
address gemAddress;
address sub_f5757c7dAddress;
uint128 axe;
uint128 hat; offset 128
uint8 off; offset 128
uint128 mat;
uint32 stor10; offset 128
uint32 stor10; offset 224
uint128 stor10; offset 152
uint128 stor10; offset 129
uint128 fix;
uint128 par; offset 128
uint256 cupi;
mapping of struct ink;

function sin() {
    return sinAddress
}

function skr() {
    return skrAddress
}

function ink(bytes32 arg1) {
    return ink[arg1].field_384
}

function par() {
    return par
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

function off() {
    return bool(off)
}

function gem() {
    return gemAddress
}

function owner() {
    return owner
}

function sai() {
    return saiAddress
}

function fix() {
    return fix
}

function mat() {
    return mat
}

function authority() {
    return authorityAddress
}

function lad(bytes32 arg1) {
    return ink[arg1].field_0
}

function sub_f5757c7d(?) {
    return sub_f5757c7dAddress
}

function tab(bytes32 arg1) {
    return ink[arg1].field_256
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

function tag() {
    require ext_code.size(sub_f5757c7dAddress)
    call sub_f5757c7dAddress.read() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function air() {
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args potAddress
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

function woe() {
    require ext_code.size(sinAddress)
    call sinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function joy() {
    require ext_code.size(saiAddress)
    call saiAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function fog() {
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function pie() {
    require ext_code.size(gemAddress)
    call gemAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[16 len 16]
}

function give(bytes32 arg1, address arg2) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ink[arg1].field_0 == msg.sender
    require arg2
    ink[arg1].field_0 = arg2
}

function open() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not off
    cupi++
    ink[stor11 + 1].field_0 = msg.sender
    emit LogNewCup((cupi + 1), msg.sender);
    return (cupi + 1)
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

function sub_56371435(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    hat = uint128(arg1)
}

function sub_bdf6e771(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
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
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    axe = uint128(arg1)
    require 1000000000 * 10^18 <= uint128(arg1)
    require axe <= mat
}

function sub_07c241aa(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not off
    require ink[arg1].field_0 == msg.sender
    require uint128(ink[arg1].field_384 + uint128(arg2)) >= ink[arg1].field_384
    ink[arg1].field_384 = uint128(ink[arg1].field_384 + uint128(arg2))
    require ext_code.size(skrAddress)
    call skrAddress.0x8402181f with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(arg2)
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args potAddress, uint128(arg2)
    require ext_call.success
}

function per() {
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        return 1000000000 * 10^18
    require ext_code.size(gemAddress)
    call gemAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[16 len 16]
    require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
    return uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
}

function sub_6299c83e(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not off
    require ink[arg1].field_0 == msg.sender
    require uint128(ink[arg1].field_256 - uint128(arg2)) <= ink[arg1].field_256
    ink[arg1].field_256 = uint128(ink[arg1].field_256 - uint128(arg2))
    require ext_code.size(saiAddress)
    call saiAddress.0x8402181f with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(arg2)
    require ext_call.success
    require ext_code.size(potAddress)
    call potAddress.0x3c71a7c7 with:
         gas gas_remaining - 710 wei
        args sinAddress, address(this.address), uint128(arg2)
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(arg2)
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(arg2)
    require ext_call.success
}

function cash() {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require off
    require ext_code.size(saiAddress)
    call saiAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(saiAddress)
    call saiAddress.0x8402181f with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(ext_call.return_data[0])
    require ext_call.success
    require (uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_code.size(potAddress)
    call potAddress.0x3c71a7c7 with:
         gas gas_remaining - 710 wei
        args gemAddress, msg.sender, uint128((uint128(ext_call.return_data[0]) * fix) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_call.success
}

function sub_4b311e54(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require off
    require (ink[arg1].field_256 * fix) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * fix) + 500000000 * 10^18 / 1000000000 * 10^18)
    require par
    require (1000000000 * 10^18 * uint128((ink[arg1].field_256 * fix) + 500000000 * 10^18 / 1000000000 * 10^18)) + Mask(127, 0, stor10.field_129) / par == uint128((1000000000 * 10^18 * uint128((ink[arg1].field_256 * fix) + 500000000 * 10^18 / 1000000000 * 10^18)) + Mask(127, 0, stor10.field_129) / par)
    if ink[arg1].field_384 <= uint128((1000000000 * 10^18 * uint128((ink[arg1].field_256 * fix) + 500000000 * 10^18 / 1000000000 * 10^18)) + Mask(127, 0, stor10.field_129) / par):
        require 0 <= ink[arg1].field_384
        require ext_code.size(potAddress)
        call potAddress.0x3c71a7c7 with:
             gas gas_remaining - 710 wei
            args skrAddress, ink[arg1].field_0, 0
        require ext_call.success
        require ext_code.size(potAddress)
        call potAddress.0x3c71a7c7 with:
             gas gas_remaining - 710 wei
            args skrAddress, address(this.address), ink[arg1].field_384
        require ext_call.success
        require ext_code.size(skrAddress)
        call skrAddress.0x90bc1693 with:
             gas gas_remaining - 710 wei
            args ink[arg1].field_384
    else:
        require uint128(ink[arg1].field_384 - ((1000000000 * 10^18 * uint128((ink[arg1].field_256 * fix) + 500000000 * 10^18 / 1000000000 * 10^18)) + Mask(127, 0, stor10.field_129) / par)) <= ink[arg1].field_384
        require ext_code.size(potAddress)
        call potAddress.0x3c71a7c7 with:
             gas gas_remaining - 710 wei
            args skrAddress, ink[arg1].field_0, uint128(ink[arg1].field_384 - ((1000000000 * 10^18 * uint128((ink[arg1].field_256 * fix) + 500000000 * 10^18 / 1000000000 * 10^18)) + Mask(127, 0, stor10.field_129) / par))
        require ext_call.success
        require ext_code.size(potAddress)
        call potAddress.0x3c71a7c7 with:
             gas gas_remaining - 710 wei
            args skrAddress, address(this.address), uint128((1000000000 * 10^18 * uint128((ink[arg1].field_256 * fix) + 500000000 * 10^18 / 1000000000 * 10^18)) + Mask(127, 0, stor10.field_129) / par)
        require ext_call.success
        require ext_code.size(skrAddress)
        call skrAddress.0x90bc1693 with:
             gas gas_remaining - 710 wei
            args uint128((1000000000 * 10^18 * uint128((ink[arg1].field_256 * fix) + 500000000 * 10^18 / 1000000000 * 10^18)) + Mask(127, 0, stor10.field_129) / par)
    require ext_call.success
    ink[arg1].field_0 = 0
    ink[arg1].field_256 = 0
}

function exit(uint128 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        if (1000000000 * 10^18 * arg1) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * arg1) + 500000000 * 10^18 / 1000000000 * 10^18):
            if ext_code.size(skrAddress):
                call skrAddress.0x8402181f with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg1
                if ext_call.success:
                    if ext_code.size(skrAddress):
                        call skrAddress.0x90bc1693 with:
                             gas gas_remaining - 710 wei
                            args arg1
                        if ext_call.success:
                            if ext_code.size(gemAddress):
                                call gemAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, uint128((1000000000 * 10^18 * arg1) + 500000000 * 10^18 / 1000000000 * 10^18)
                                if ext_call.success:
    else:
        if ext_code.size(gemAddress):
            call gemAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(skrAddress):
                    call skrAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[16 len 16]:
                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                if (arg1 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((arg1 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(skrAddress):
                                        call skrAddress.0x8402181f with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, arg1
                                        if ext_call.success:
                                            if ext_code.size(skrAddress):
                                                call skrAddress.0x90bc1693 with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                if ext_call.success:
                                                    if ext_code.size(gemAddress):
                                                        call gemAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, uint128((arg1 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                        if ext_call.success:
    revert
}

function safe(bytes32 arg1) {
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        if (1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18):
            if ext_code.size(sub_f5757c7dAddress):
                call sub_f5757c7dAddress.read() with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if (uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                        if (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
                            return uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    else:
        if ext_code.size(gemAddress):
            call gemAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(skrAddress):
                    call skrAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[16 len 16]:
                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                if (ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(sub_f5757c7dAddress):
                                        call sub_f5757c7dAddress.read() with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if (uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                if (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                    return uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    revert
}

function sub_353f30e8(?) {
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args potAddress
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
            if ext_code.size(sub_f5757c7dAddress):
                call sub_f5757c7dAddress.read() with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                        if ext_code.size(sinAddress):
                            call sinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                    return (uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) < ext_call.return_data[16 len 16])
    else:
        if ext_code.size(gemAddress):
            call gemAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(skrAddress):
                    call skrAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[16 len 16]:
                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                if (uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(sub_f5757c7dAddress):
                                        call sub_f5757c7dAddress.read() with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if (uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                if ext_code.size(sinAddress):
                                                    call sinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    if ext_call.success:
                                                        if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                            return (uint128((uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) < ext_call.return_data[16 len 16])
    revert
}

function sub_295d3a54(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not off
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        if (1000000000 * 10^18 * uint128(arg1)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(arg1)) + 500000000 * 10^18 / 1000000000 * 10^18):
            if ext_code.size(gemAddress):
                call gemAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), uint128(arg1)
                if ext_call.success:
                    if ext_code.size(skrAddress):
                        call skrAddress.0x69d3e20e with:
                             gas gas_remaining - 710 wei
                            args uint128((1000000000 * 10^18 * uint128(arg1)) + 500000000 * 10^18 / 1000000000 * 10^18)
                        if ext_call.success:
                            if ext_code.size(skrAddress):
                                call skrAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, uint128((1000000000 * 10^18 * uint128(arg1)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                if ext_call.success:
    else:
        if ext_code.size(gemAddress):
            call gemAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(skrAddress):
                    call skrAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[16 len 16]:
                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                if uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                    if (1000000000 * 10^18 * uint128(arg1)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) == uint128((1000000000 * 10^18 * uint128(arg1)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])):
                                        if ext_code.size(gemAddress):
                                            call gemAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, address(this.address), uint128(arg1)
                                            if ext_call.success:
                                                if ext_code.size(skrAddress):
                                                    call skrAddress.0x69d3e20e with:
                                                         gas gas_remaining - 710 wei
                                                        args uint128((1000000000 * 10^18 * uint128(arg1)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                    if ext_call.success:
                                                        if ext_code.size(skrAddress):
                                                            call skrAddress.0x3452f51d with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, uint128((1000000000 * 10^18 * uint128(arg1)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])))
                                                            if ext_call.success:
    revert
}

function sub_a22664ad(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not off
    require ink[arg1].field_0 == msg.sender
    require uint128(ink[arg1].field_256 + uint128(arg2)) >= ink[arg1].field_256
    ink[arg1].field_256 = uint128(ink[arg1].field_256 + uint128(arg2))
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        require (1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18)
        require ext_code.size(sub_f5757c7dAddress)
        call sub_f5757c7dAddress.read() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require (uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
        require (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    else:
        require ext_code.size(gemAddress)
        call gemAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(skrAddress)
        call skrAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[16 len 16]
        require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
        require (ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18)
        require ext_code.size(sub_f5757c7dAddress)
        call sub_f5757c7dAddress.read() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require (uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
        require (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_code.size(saiAddress)
    call saiAddress.0x69d3e20e with:
         gas gas_remaining - 710 wei
        args uint128(arg2)
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x69d3e20e with:
         gas gas_remaining - 710 wei
        args uint128(arg2)
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args potAddress, uint128(arg2)
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(arg2)
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_call.return_data[16 len 16] <= hat
}

function sub_67c48dd6(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not off
    require ink[arg1].field_0 == msg.sender
    require uint128(ink[arg1].field_384 - uint128(arg2)) <= ink[arg1].field_384
    ink[arg1].field_384 = uint128(ink[arg1].field_384 - uint128(arg2))
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        if (1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18):
            if ext_code.size(sub_f5757c7dAddress):
                call sub_f5757c7dAddress.read() with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if (uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                        if (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
                            require uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
                            if ext_code.size(potAddress):
                                call potAddress.0x3c71a7c7 with:
                                     gas gas_remaining - 710 wei
                                    args skrAddress, msg.sender, uint128(arg2)
                                if ext_call.success:
    else:
        if ext_code.size(gemAddress):
            call gemAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(skrAddress):
                    call skrAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[16 len 16]:
                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                if (ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(sub_f5757c7dAddress):
                                        call sub_f5757c7dAddress.read() with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if (uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                if (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                    require uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                    if ext_code.size(potAddress):
                                                        call potAddress.0x3c71a7c7 with:
                                                             gas gas_remaining - 710 wei
                                                            args skrAddress, msg.sender, uint128(arg2)
                                                        if ext_call.success:
    revert
}

function safe() {
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args potAddress
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18):
            if ext_code.size(sub_f5757c7dAddress):
                call sub_f5757c7dAddress.read() with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                        if ext_code.size(sinAddress):
                            call sinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                    if (ext_call.return_data[16 len 16] * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ext_call.return_data[16 len 16] * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
                                        return uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ext_call.return_data[16 len 16] * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    else:
        if ext_code.size(gemAddress):
            call gemAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(skrAddress):
                    call skrAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[16 len 16]:
                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                if (uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(sub_f5757c7dAddress):
                                        call sub_f5757c7dAddress.read() with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if (uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                                if ext_code.size(sinAddress):
                                                    call sinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    if ext_call.success:
                                                        if ext_call.return_data[0] == ext_call.return_data[16 len 16]:
                                                            if (ext_call.return_data[16 len 16] * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ext_call.return_data[16 len 16] * mat) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                return uint128((uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ext_call.return_data[16 len 16] * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    revert
}

function shut(bytes32 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require not off
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require ink[arg1].field_0 == msg.sender
    require 0 <= ink[arg1].field_256
    ink[arg1].field_256 = 0
    require ext_code.size(saiAddress)
    call saiAddress.0x8402181f with:
         gas gas_remaining - 710 wei
        args msg.sender, ink[arg1].field_256
    require ext_call.success
    require ext_code.size(potAddress)
    call potAddress.0x3c71a7c7 with:
         gas gas_remaining - 710 wei
        args sinAddress, address(this.address), ink[arg1].field_256
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args ink[arg1].field_256
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args ink[arg1].field_256
    require ext_call.success
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require not off
    require ink[arg1].field_0 == msg.sender
    require 0 <= ink[arg1].field_384
    ink[arg1].field_384 = 0
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        require (1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18)
        require ext_code.size(sub_f5757c7dAddress)
        call sub_f5757c7dAddress.read() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require (uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
        require (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    else:
        require ext_code.size(gemAddress)
        call gemAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(skrAddress)
        call skrAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[16 len 16]
        require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
        require (ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18)
        require ext_code.size(sub_f5757c7dAddress)
        call sub_f5757c7dAddress.read() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require (uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
        require (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) >= uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_code.size(potAddress)
    call potAddress.0x3c71a7c7 with:
         gas gas_remaining - 710 wei
        args skrAddress, msg.sender, ink[arg1].field_384
    require ext_call.success
    ink[arg1].field_0 = 0
    ink[arg1].field_256 = 0
}

function sub_de3e7a9c(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not off
    require ext_code.size(saiAddress)
    call saiAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(sub_f5757c7dAddress)
    call sub_f5757c7dAddress.read() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (uint128(arg1) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(arg1) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        if (1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
            if ext_code.size(saiAddress):
                call saiAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                if ext_call.success:
                    require uint128((1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) <= ext_call.return_data[16 len 16]
                    if ext_code.size(skrAddress):
                        call skrAddress.0x8402181f with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(arg1)
                        if ext_call.success:
                            if ext_code.size(skrAddress):
                                call skrAddress.0x90bc1693 with:
                                     gas gas_remaining - 710 wei
                                    args uint128(arg1)
                                if ext_call.success:
                                    if ext_code.size(saiAddress):
                                        call saiAddress.0x3452f51d with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, uint128((1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                        if ext_call.success:
    else:
        if ext_code.size(gemAddress):
            call gemAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(skrAddress):
                    call skrAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[16 len 16]:
                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                if (uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(saiAddress):
                                        call saiAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            require uint128((uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) <= ext_call.return_data[16 len 16]
                                            if ext_code.size(skrAddress):
                                                call skrAddress.0x8402181f with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, uint128(arg1)
                                                if ext_call.success:
                                                    if ext_code.size(skrAddress):
                                                        call skrAddress.0x90bc1693 with:
                                                             gas gas_remaining - 710 wei
                                                            args uint128(arg1)
                                                        if ext_call.success:
                                                            if ext_code.size(saiAddress):
                                                                call saiAddress.0x3452f51d with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, uint128((uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                if ext_call.success:
    revert
}

function bite(bytes32 arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require not off
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        require (1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18)
        require ext_code.size(sub_f5757c7dAddress)
        call sub_f5757c7dAddress.read() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require (uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
        require (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((uint128((1000000000 * 10^18 * ink[arg1].field_384) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) < uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    else:
        require ext_code.size(gemAddress)
        call gemAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(skrAddress)
        call skrAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[16 len 16]
        require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
        require (ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18)
        require ext_code.size(sub_f5757c7dAddress)
        call sub_f5757c7dAddress.read() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require (uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
        require (ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((uint128((ink[arg1].field_384 * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) < uint128((ink[arg1].field_256 * mat) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_code.size(potAddress)
    call potAddress.0x3c71a7c7 with:
         gas gas_remaining - 710 wei
        args sinAddress, address(this.address), ink[arg1].field_256
    require ext_call.success
    ink[arg1].field_256 = 0
    require (ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_code.size(sub_f5757c7dAddress)
    call sub_f5757c7dAddress.read() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < 10^18:
        require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
        require (10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) == uint128((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18))
        require ext_code.size(potAddress)
        if ink[arg1].field_384 >= uint128((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)):
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args skrAddress, address(this.address), uint128((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18))
            require ext_call.success
            require uint128(ink[arg1].field_384 - ((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18))) <= ink[arg1].field_384
            ink[arg1].field_384 = uint128(ink[arg1].field_384 - ((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)))
        else:
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args skrAddress, address(this.address), ink[arg1].field_384
            require ext_call.success
            require 0 <= ink[arg1].field_384
            ink[arg1].field_384 = 0
    else:
        require ext_code.size(gemAddress)
        call gemAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(skrAddress)
        call skrAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[16 len 16]
        require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
        require (uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18)
        require (10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18) == uint128((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18))
        require ext_code.size(potAddress)
        if ink[arg1].field_384 >= uint128((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18)):
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args skrAddress, address(this.address), uint128((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18))
            require ext_call.success
            require uint128(ink[arg1].field_384 - ((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18))) <= ink[arg1].field_384
            ink[arg1].field_384 = uint128(ink[arg1].field_384 - ((10^18 * uint128((ink[arg1].field_256 * axe) + 500000000 * 10^18 / 1000000000 * 10^18)) + (uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128(ext_call.return_data[0]) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18)))
        else:
            call potAddress.0x3c71a7c7 with:
                 gas gas_remaining - 710 wei
                args skrAddress, address(this.address), ink[arg1].field_384
            require ext_call.success
            require 0 <= ink[arg1].field_384
            ink[arg1].field_384 = 0
}

function sub_90089adf(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not off
    require ext_code.size(saiAddress)
    call saiAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(saiAddress)
    call saiAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(sinAddress)
    call sinAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(skrAddress)
    call skrAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if uint128(arg1) <= ext_call.return_data[16 len 16]:
        if ext_code.size(sub_f5757c7dAddress):
            call sub_f5757c7dAddress.read() with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if (uint128(arg1) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(arg1) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                    if ext_code.size(skrAddress):
                        call skrAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if ext_call.return_data[0] < 10^18:
                                if (1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                    if ext_code.size(sinAddress):
                                        call sinAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            require uint128((1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) <= ext_call.return_data[16 len 16]
                                            if ext_code.size(skrAddress):
                                                call skrAddress.0x3452f51d with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, uint128(arg1)
                                                if ext_call.success:
                                                    if ext_code.size(saiAddress):
                                                        call saiAddress.0x8402181f with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, uint128((1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                        if ext_call.success:
                                                            if ext_code.size(saiAddress):
                                                                call saiAddress.0x70a08231 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args this.address
                                                                if ext_call.success:
                                                                    if ext_code.size(sinAddress):
                                                                        call sinAddress.0x70a08231 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args this.address
                                                                        if ext_call.success:
                                                                            if ext_code.size(saiAddress):
                                                                                call saiAddress.0x90bc1693 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args uint128(ext_call.return_data[0])
                                                                                if ext_call.success:
                                                                                    if ext_code.size(sinAddress):
                                                                                        call sinAddress.0x90bc1693 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args uint128(ext_call.return_data[0])
                                                                                        if ext_call.success:
                            else:
                                if ext_code.size(gemAddress):
                                    call gemAddress.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    if ext_call.success:
                                        if ext_code.size(skrAddress):
                                            call skrAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            if ext_call.success:
                                                if ext_call.return_data[16 len 16]:
                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                        if (uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                            if ext_code.size(sinAddress):
                                                                call sinAddress.0x70a08231 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args this.address
                                                                if ext_call.success:
                                                                    require uint128((uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) <= ext_call.return_data[16 len 16]
                                                                    if ext_code.size(skrAddress):
                                                                        call skrAddress.0x3452f51d with:
                                                                             gas gas_remaining - 710 wei
                                                                            args msg.sender, uint128(arg1)
                                                                        if ext_call.success:
                                                                            if ext_code.size(saiAddress):
                                                                                call saiAddress.0x8402181f with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args msg.sender, uint128((uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                if ext_call.success:
                                                                                    if ext_code.size(saiAddress):
                                                                                        call saiAddress.0x70a08231 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args this.address
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(sinAddress):
                                                                                                call sinAddress.0x70a08231 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args this.address
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(saiAddress):
                                                                                                        call saiAddress.0x90bc1693 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args uint128(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(sinAddress):
                                                                                                                call sinAddress.0x90bc1693 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args uint128(ext_call.return_data[0])
                                                                                                                if ext_call.success:
    else:
        if ext_code.size(skrAddress):
            call skrAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(skrAddress):
                    call skrAddress.0x69d3e20e with:
                         gas gas_remaining - 710 wei
                        args uint128(uint128(arg1) - ext_call.return_data[0])
                    if ext_call.success:
                        if ext_code.size(sub_f5757c7dAddress):
                            call sub_f5757c7dAddress.read() with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if (uint128(arg1) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((uint128(arg1) * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18):
                                    if ext_code.size(skrAddress):
                                        call skrAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if ext_call.return_data[0] < 10^18:
                                                if (1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                    if ext_code.size(sinAddress):
                                                        call sinAddress.0x70a08231 with:
                                                             gas gas_remaining - 710 wei
                                                            args this.address
                                                        if ext_call.success:
                                                            require uint128((1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18) <= ext_call.return_data[16 len 16]
                                                            if ext_code.size(skrAddress):
                                                                call skrAddress.0x3452f51d with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, uint128(arg1)
                                                                if ext_call.success:
                                                                    if ext_code.size(saiAddress):
                                                                        call saiAddress.0x8402181f with:
                                                                             gas gas_remaining - 710 wei
                                                                            args msg.sender, uint128((1000000000 * 10^18 * uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                        if ext_call.success:
                                                                            if ext_code.size(saiAddress):
                                                                                call saiAddress.0x70a08231 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args this.address
                                                                                if ext_call.success:
                                                                                    if ext_code.size(sinAddress):
                                                                                        call sinAddress.0x70a08231 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args this.address
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(saiAddress):
                                                                                                call saiAddress.0x90bc1693 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args uint128(ext_call.return_data[0])
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(sinAddress):
                                                                                                        call sinAddress.0x90bc1693 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args uint128(ext_call.return_data[0])
                                                                                                        if ext_call.success:
                                            else:
                                                if ext_code.size(gemAddress):
                                                    call gemAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(skrAddress):
                                                            call skrAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            if ext_call.success:
                                                                if ext_call.return_data[16 len 16]:
                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                        if (uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                            if ext_code.size(sinAddress):
                                                                                call sinAddress.0x70a08231 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args this.address
                                                                                if ext_call.success:
                                                                                    require uint128((uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18) <= ext_call.return_data[16 len 16]
                                                                                    if ext_code.size(skrAddress):
                                                                                        call skrAddress.0x3452f51d with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args msg.sender, uint128(arg1)
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(saiAddress):
                                                                                                call saiAddress.0x8402181f with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args msg.sender, uint128((uint128((uint128(arg1) * uint128(ext_call.return_data[0])) + 5 * 10^17 / 10^18) * uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                if ext_call.success:
                                                                                                    if ext_code.size(saiAddress):
                                                                                                        call saiAddress.0x70a08231 with:
                                                                                                             gas gas_remaining - 710 wei
                                                                                                            args this.address
                                                                                                        if ext_call.success:
                                                                                                            if ext_code.size(sinAddress):
                                                                                                                call sinAddress.0x70a08231 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args this.address
                                                                                                                if ext_call.success:
                                                                                                                    if ext_code.size(saiAddress):
                                                                                                                        call saiAddress.0x90bc1693 with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                            args uint128(ext_call.return_data[0])
                                                                                                                        if ext_call.success:
                                                                                                                            if ext_code.size(sinAddress):
                                                                                                                                call sinAddress.0x90bc1693 with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args uint128(ext_call.return_data[0])
                                                                                                                                if ext_call.success:
    revert
}

function sub_cbd5accc(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender == this.address:
        require not off
        off = 1
        if ext_code.size(potAddress):
            call potAddress.0xb716ba67 with:
                 gas gas_remaining - 710 wei
                args sinAddress, this.address
            if ext_call.success:
                if ext_code.size(saiAddress):
                    call saiAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    if ext_call.success:
                        if ext_code.size(sinAddress):
                            call sinAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            if ext_call.success:
                                if ext_code.size(saiAddress):
                                    call saiAddress.0x90bc1693 with:
                                         gas gas_remaining - 710 wei
                                        args uint128(ext_call.return_data[0])
                                    if ext_call.success:
                                        if ext_code.size(sinAddress):
                                            call sinAddress.0x90bc1693 with:
                                                 gas gas_remaining - 710 wei
                                                args uint128(ext_call.return_data[0])
                                            if ext_call.success:
                                                if ext_code.size(skrAddress):
                                                    call skrAddress.0x70a08231 with:
                                                         gas gas_remaining - 710 wei
                                                        args this.address
                                                    if ext_call.success:
                                                        if ext_code.size(skrAddress):
                                                            call skrAddress.0x90bc1693 with:
                                                                 gas gas_remaining - 710 wei
                                                                args uint128(ext_call.return_data[0])
                                                            if ext_call.success:
                                                                if ext_code.size(skrAddress):
                                                                    call skrAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    if ext_call.success:
                                                                        if ext_call.return_data[0] < 10^18:
                                                                            stor10.field_128 % 16777216 = 0
                                                                            Mask(72, 0, stor10.field_152) = 59604644775390625000
                                                                            uint32(stor10.field_224) = 0
                                                                            if uint128(10^9 * uint128(arg1)):
                                                                                if (uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)) == uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))):
                                                                                    if ext_code.size(gemAddress):
                                                                                        call gemAddress.0x70a08231 with:
                                                                                             gas gas_remaining - 710 wei
                                                                                            args this.address
                                                                                        if ext_call.success:
                                                                                            if ext_code.size(sinAddress):
                                                                                                call sinAddress.0x70a08231 with:
                                                                                                     gas gas_remaining - 710 wei
                                                                                                    args this.address
                                                                                                if ext_call.success:
                                                                                                    if ext_call.return_data[16 len 16]:
                                                                                                        if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                            if uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) <= uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                fix = uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)))
                                                                                                                if ext_code.size(sinAddress):
                                                                                                                    call sinAddress.0x70a08231 with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args this.address
                                                                                                                    if ext_call.success:
                                                                                                                        if (uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                            if ext_code.size(gemAddress):
                                                                                                                                call gemAddress.0xa9059cbb with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args potAddress, uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                if ext_call.success:
                                                                                                            else:
                                                                                                                fix = uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
                                                                                                                if ext_code.size(sinAddress):
                                                                                                                    call sinAddress.0x70a08231 with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args this.address
                                                                                                                    if ext_call.success:
                                                                                                                        if (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                            if ext_code.size(gemAddress):
                                                                                                                                call gemAddress.0xa9059cbb with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args potAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                if ext_call.success:
                                                                        else:
                                                                            if ext_code.size(gemAddress):
                                                                                call gemAddress.0x70a08231 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args this.address
                                                                                if ext_call.success:
                                                                                    if ext_code.size(skrAddress):
                                                                                        call skrAddress.0x18160ddd with:
                                                                                             gas gas_remaining - 710 wei
                                                                                        if ext_call.success:
                                                                                            if ext_call.return_data[16 len 16]:
                                                                                                if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                    par = uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
                                                                                                    if uint128(10^9 * uint128(arg1)):
                                                                                                        if (uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)) == uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))):
                                                                                                            if ext_code.size(gemAddress):
                                                                                                                call gemAddress.0x70a08231 with:
                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                    args this.address
                                                                                                                if ext_call.success:
                                                                                                                    if ext_code.size(sinAddress):
                                                                                                                        call sinAddress.0x70a08231 with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                            args this.address
                                                                                                                        if ext_call.success:
                                                                                                                            if ext_call.return_data[16 len 16]:
                                                                                                                                if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                                    if uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) <= uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                                        fix = uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)))
                                                                                                                                        if ext_code.size(sinAddress):
                                                                                                                                            call sinAddress.0x70a08231 with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args this.address
                                                                                                                                            if ext_call.success:
                                                                                                                                                if (uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                    if ext_code.size(gemAddress):
                                                                                                                                                        call gemAddress.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args potAddress, uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                        if ext_call.success:
                                                                                                                                    else:
                                                                                                                                        fix = uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
                                                                                                                                        if ext_code.size(sinAddress):
                                                                                                                                            call sinAddress.0x70a08231 with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args this.address
                                                                                                                                            if ext_call.success:
                                                                                                                                                if (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                    if ext_code.size(gemAddress):
                                                                                                                                                        call gemAddress.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args potAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                        if ext_call.success:
    else:
        if owner == msg.sender:
            require not off
            off = 1
            if ext_code.size(potAddress):
                call potAddress.0xb716ba67 with:
                     gas gas_remaining - 710 wei
                    args sinAddress, this.address
                if ext_call.success:
                    if ext_code.size(saiAddress):
                        call saiAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        if ext_call.success:
                            if ext_code.size(sinAddress):
                                call sinAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                if ext_call.success:
                                    if ext_code.size(saiAddress):
                                        call saiAddress.0x90bc1693 with:
                                             gas gas_remaining - 710 wei
                                            args uint128(ext_call.return_data[0])
                                        if ext_call.success:
                                            if ext_code.size(sinAddress):
                                                call sinAddress.0x90bc1693 with:
                                                     gas gas_remaining - 710 wei
                                                    args uint128(ext_call.return_data[0])
                                                if ext_call.success:
                                                    if ext_code.size(skrAddress):
                                                        call skrAddress.0x70a08231 with:
                                                             gas gas_remaining - 710 wei
                                                            args this.address
                                                        if ext_call.success:
                                                            if ext_code.size(skrAddress):
                                                                call skrAddress.0x90bc1693 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args uint128(ext_call.return_data[0])
                                                                if ext_call.success:
                                                                    if ext_code.size(skrAddress):
                                                                        call skrAddress.0x18160ddd with:
                                                                             gas gas_remaining - 710 wei
                                                                        if ext_call.success:
                                                                            if ext_call.return_data[0] < 10^18:
                                                                                stor10.field_128 % 16777216 = 0
                                                                                Mask(72, 0, stor10.field_152) = 59604644775390625000
                                                                                uint32(stor10.field_224) = 0
                                                                                if uint128(10^9 * uint128(arg1)):
                                                                                    if (uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)) == uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))):
                                                                                        if ext_code.size(gemAddress):
                                                                                            call gemAddress.0x70a08231 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args this.address
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(sinAddress):
                                                                                                    call sinAddress.0x70a08231 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args this.address
                                                                                                    if ext_call.success:
                                                                                                        if ext_call.return_data[16 len 16]:
                                                                                                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                if uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) <= uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                    fix = uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)))
                                                                                                                    if ext_code.size(sinAddress):
                                                                                                                        call sinAddress.0x70a08231 with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                            args this.address
                                                                                                                        if ext_call.success:
                                                                                                                            if (uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                if ext_code.size(gemAddress):
                                                                                                                                    call gemAddress.0xa9059cbb with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args potAddress, uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                    if ext_call.success:
                                                                                                                else:
                                                                                                                    fix = uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
                                                                                                                    if ext_code.size(sinAddress):
                                                                                                                        call sinAddress.0x70a08231 with:
                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                            args this.address
                                                                                                                        if ext_call.success:
                                                                                                                            if (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                if ext_code.size(gemAddress):
                                                                                                                                    call gemAddress.0xa9059cbb with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args potAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                    if ext_call.success:
                                                                            else:
                                                                                if ext_code.size(gemAddress):
                                                                                    call gemAddress.0x70a08231 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args this.address
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(skrAddress):
                                                                                            call skrAddress.0x18160ddd with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                            if ext_call.success:
                                                                                                if ext_call.return_data[16 len 16]:
                                                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                        par = uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
                                                                                                        if uint128(10^9 * uint128(arg1)):
                                                                                                            if (uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)) == uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))):
                                                                                                                if ext_code.size(gemAddress):
                                                                                                                    call gemAddress.0x70a08231 with:
                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                        args this.address
                                                                                                                    if ext_call.success:
                                                                                                                        if ext_code.size(sinAddress):
                                                                                                                            call sinAddress.0x70a08231 with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                args this.address
                                                                                                                            if ext_call.success:
                                                                                                                                if ext_call.return_data[16 len 16]:
                                                                                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                                        if uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) <= uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                                            fix = uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)))
                                                                                                                                            if ext_code.size(sinAddress):
                                                                                                                                                call sinAddress.0x70a08231 with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                    args this.address
                                                                                                                                                if ext_call.success:
                                                                                                                                                    if (uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                        if ext_code.size(gemAddress):
                                                                                                                                                            call gemAddress.0xa9059cbb with:
                                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                                args potAddress, uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                            if ext_call.success:
                                                                                                                                        else:
                                                                                                                                            fix = uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
                                                                                                                                            if ext_code.size(sinAddress):
                                                                                                                                                call sinAddress.0x70a08231 with:
                                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                                    args this.address
                                                                                                                                                if ext_call.success:
                                                                                                                                                    if (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                        if ext_code.size(gemAddress):
                                                                                                                                                            call gemAddress.0xa9059cbb with:
                                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                                args potAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                            if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    require not off
                    off = 1
                    if ext_code.size(potAddress):
                        call potAddress.0xb716ba67 with:
                             gas gas_remaining - 710 wei
                            args sinAddress, this.address
                        if ext_call.success:
                            if ext_code.size(saiAddress):
                                call saiAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                if ext_call.success:
                                    if ext_code.size(sinAddress):
                                        call sinAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            if ext_code.size(saiAddress):
                                                call saiAddress.0x90bc1693 with:
                                                     gas gas_remaining - 710 wei
                                                    args uint128(ext_call.return_data[0])
                                                if ext_call.success:
                                                    if ext_code.size(sinAddress):
                                                        call sinAddress.0x90bc1693 with:
                                                             gas gas_remaining - 710 wei
                                                            args uint128(ext_call.return_data[0])
                                                        if ext_call.success:
                                                            if ext_code.size(skrAddress):
                                                                call skrAddress.0x70a08231 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args this.address
                                                                if ext_call.success:
                                                                    if ext_code.size(skrAddress):
                                                                        call skrAddress.0x90bc1693 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args uint128(ext_call.return_data[0])
                                                                        if ext_call.success:
                                                                            if ext_code.size(skrAddress):
                                                                                call skrAddress.0x18160ddd with:
                                                                                     gas gas_remaining - 710 wei
                                                                                if ext_call.success:
                                                                                    if ext_call.return_data[0] < 10^18:
                                                                                        stor10.field_128 % 16777216 = 0
                                                                                        Mask(72, 0, stor10.field_152) = 59604644775390625000
                                                                                        uint32(stor10.field_224) = 0
                                                                                        if uint128(10^9 * uint128(arg1)):
                                                                                            if (uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)) == uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))):
                                                                                                if ext_code.size(gemAddress):
                                                                                                    call gemAddress.0x70a08231 with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                        args this.address
                                                                                                    if ext_call.success:
                                                                                                        if ext_code.size(sinAddress):
                                                                                                            call sinAddress.0x70a08231 with:
                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                args this.address
                                                                                                            if ext_call.success:
                                                                                                                if ext_call.return_data[16 len 16]:
                                                                                                                    if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                        if uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) <= uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                            fix = uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)))
                                                                                                                            if ext_code.size(sinAddress):
                                                                                                                                call sinAddress.0x70a08231 with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args this.address
                                                                                                                                if ext_call.success:
                                                                                                                                    if (uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                        if ext_code.size(gemAddress):
                                                                                                                                            call gemAddress.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args potAddress, uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                            if ext_call.success:
                                                                                                                        else:
                                                                                                                            fix = uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
                                                                                                                            if ext_code.size(sinAddress):
                                                                                                                                call sinAddress.0x70a08231 with:
                                                                                                                                     gas gas_remaining - 710 wei
                                                                                                                                    args this.address
                                                                                                                                if ext_call.success:
                                                                                                                                    if (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                        if ext_code.size(gemAddress):
                                                                                                                                            call gemAddress.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                                args potAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                            if ext_call.success:
                                                                                    else:
                                                                                        if ext_code.size(gemAddress):
                                                                                            call gemAddress.0x70a08231 with:
                                                                                                 gas gas_remaining - 710 wei
                                                                                                args this.address
                                                                                            if ext_call.success:
                                                                                                if ext_code.size(skrAddress):
                                                                                                    call skrAddress.0x18160ddd with:
                                                                                                         gas gas_remaining - 710 wei
                                                                                                    if ext_call.success:
                                                                                                        if ext_call.return_data[16 len 16]:
                                                                                                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                par = uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
                                                                                                                if uint128(10^9 * uint128(arg1)):
                                                                                                                    if (uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)) == uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))):
                                                                                                                        if ext_code.size(gemAddress):
                                                                                                                            call gemAddress.0x70a08231 with:
                                                                                                                                 gas gas_remaining - 710 wei
                                                                                                                                args this.address
                                                                                                                            if ext_call.success:
                                                                                                                                if ext_code.size(sinAddress):
                                                                                                                                    call sinAddress.0x70a08231 with:
                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                        args this.address
                                                                                                                                    if ext_call.success:
                                                                                                                                        if ext_call.return_data[16 len 16]:
                                                                                                                                            if (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16] == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                                                if uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) <= uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16]):
                                                                                                                                                    fix = uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1)))
                                                                                                                                                    if ext_code.size(sinAddress):
                                                                                                                                                        call sinAddress.0x70a08231 with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args this.address
                                                                                                                                                        if ext_call.success:
                                                                                                                                                            if (uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                if ext_code.size(gemAddress):
                                                                                                                                                                    call gemAddress.0xa9059cbb with:
                                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                                        args potAddress, uint128((uint128((uint128(10^9 * uint128(arg1)) / 2) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / uint128(10^9 * uint128(arg1))) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                    if ext_call.success:
                                                                                                                                                else:
                                                                                                                                                    fix = uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / ext_call.return_data[16 len 16])
                                                                                                                                                    if ext_code.size(sinAddress):
                                                                                                                                                        call sinAddress.0x70a08231 with:
                                                                                                                                                             gas gas_remaining - 710 wei
                                                                                                                                                            args this.address
                                                                                                                                                        if ext_call.success:
                                                                                                                                                            if (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18):
                                                                                                                                                                if ext_code.size(gemAddress):
                                                                                                                                                                    call gemAddress.0xa9059cbb with:
                                                                                                                                                                         gas gas_remaining - 710 wei
                                                                                                                                                                        args potAddress, uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(ext_call.return_data[0])) + 500000000 * 10^18 / 1000000000 * 10^18)
                                                                                                                                                                    if ext_call.success:
    revert
}



}

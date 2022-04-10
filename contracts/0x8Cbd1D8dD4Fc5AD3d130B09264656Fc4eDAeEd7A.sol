contract main {


// =======================  Init code  ======================


address stor1;
address stor3;
address stor4;
address stor5;
uint16 stor6;
uint64 stor6; offset 16
uint64 stor6; offset 64

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor3 = code.data[5464 len 20]
    stor4 = code.data[5496 len 20]
    stor5 = code.data[5528 len 20]
    uint16(stor6.field_0) = 0
    stor6.field_16 % 281474976710656 = 15258789062500
    uint64(stor6.field_64) = 0
    return code.data[235 len 5217]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address tokenAddress;
address skrAddress;
address gemAddress;
address pipAddress;
uint128 gap;

function skr() {
    return skrAddress
}

function gap() {
    return gap
}

function gem() {
    return gemAddress
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function pip() {
    return pipAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function swap(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    tokenAddress = arg1
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
}

function burn(address arg1, uint128 arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function mint(address arg1, uint128 arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x69d3e20e with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function mint(uint128 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x69d3e20e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function burn(uint128 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_3c71a7c7(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function push(address arg1, uint128 arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function pull(address arg1, address arg2, uint128 arg3) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg2), address(this.address), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function pull(address arg1, uint128 arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function burn(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(arg1)
    call arg1.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(ext_call.return_data[0])
    require ext_call.success
}

function burn() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x90bc1693 with:
         gas gas_remaining - 710 wei
        args uint128(ext_call.return_data[0])
    require ext_call.success
}

function sub_b716ba67(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_66b3bcb0(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg2), address(this.address), uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[0]
}

function push(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[0]
}

function pull(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg1), address(this.address), uint128(ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[0]
}

function per() {
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(gemAddress)
    call gemAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1000000000 * 10^18
    require uint128(ext_call.return_data[0])
    require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
    return uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
}

function ask() {
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(gemAddress)
    call gemAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require (1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18)
        return uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18)
    require uint128(ext_call.return_data[0])
    require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
    require (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18)
    return uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function bid() {
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(gemAddress)
    call gemAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require uint128(-gap + 2 * 10^18) <= 2 * 10^18
        require (1000000000 * 10^18 * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
        return uint128((1000000000 * 10^18 * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
    require uint128(ext_call.return_data[0])
    require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
    require uint128(-gap + 2 * 10^18) <= 2 * 10^18
    require (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
    return uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function tag() {
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(gemAddress)
    call gemAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(pipAddress)
        call pipAddress.0x57de26a4 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require (1000000000 * 10^18 * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18)
        return uint128((1000000000 * 10^18 * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18)
    require uint128(ext_call.return_data[0])
    require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
    require ext_code.size(pipAddress)
    call pipAddress.0x57de26a4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18)
    return uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * ext_call.return_data[16 len 16]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function exit(address arg1, uint128 arg2) {
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
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(gemAddress)
    call gemAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require uint128(-gap + 2 * 10^18) <= 2 * 10^18
        require (1000000000 * 10^18 * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
        require (arg2 * uint128((1000000000 * 10^18 * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((arg2 * uint128((1000000000 * 10^18 * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(skrAddress)
        call skrAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(arg1), address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(skrAddress)
        call skrAddress.0x90bc1693 with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(gemAddress)
        call gemAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), uint128((arg2 * uint128((1000000000 * 10^18 * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
    else:
        require uint128(ext_call.return_data[0])
        require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
        require uint128(-gap + 2 * 10^18) <= 2 * 10^18
        require (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
        require (arg2 * uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((arg2 * uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(skrAddress)
        call skrAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(arg1), address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(skrAddress)
        call skrAddress.0x90bc1693 with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(gemAddress)
        call gemAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), uint128((arg2 * uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128((-1 * 10^9 * gap) + 2000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)) + 500000000 * 10^18 / 1000000000 * 10^18)
    require ext_call.success
    require ext_call.return_data[0]
}

function join(address arg1, uint128 arg2) {
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
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(gemAddress)
    call gemAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_code.size(skrAddress)
    call skrAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require (1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18)
        require (1000000000 * 10^18 * arg2) + (uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) == uint128((1000000000 * 10^18 * arg2) + (uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18))
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(skrAddress)
        call skrAddress.0x69d3e20e with:
             gas gas_remaining - 710 wei
            args uint128((1000000000 * 10^18 * arg2) + (uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18))
        require ext_call.success
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(skrAddress)
        call skrAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), uint128((1000000000 * 10^18 * arg2) + (uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((1000000000 * 10^18 * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18))
    else:
        require uint128(ext_call.return_data[0])
        require (1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]) == uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0]))
        require (uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18 == uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18)
        require uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18)
        require (1000000000 * 10^18 * arg2) + (uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) == uint128((1000000000 * 10^18 * arg2) + (uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18))
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(skrAddress)
        call skrAddress.0x69d3e20e with:
             gas gas_remaining - 710 wei
            args uint128((1000000000 * 10^18 * arg2) + (uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18))
        require ext_call.success
        if this.address != msg.sender:
            if owner != msg.sender:
                require authorityAddress
                require ext_code.size(authorityAddress)
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                require ext_call.return_data[0]
        require ext_code.size(skrAddress)
        call skrAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), uint128((1000000000 * 10^18 * arg2) + (uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18) / 2) / uint128((uint128((1000000000 * 10^18 * uint128(ext_call.return_data[0])) + (uint128(ext_call.return_data[0]) / 2) / uint128(ext_call.return_data[0])) * uint128(10^9 * gap)) + 500000000 * 10^18 / 1000000000 * 10^18))
    require ext_call.success
    require ext_call.return_data[0]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(gemAddress)
    call gemAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
}



}

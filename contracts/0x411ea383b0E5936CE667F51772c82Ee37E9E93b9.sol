contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    return code.data[93 len 3162]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address tokenAddress;

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function cast(uint256 arg1) {
    require arg1 == uint128(arg1)
    return uint128(arg1)
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

function burn(address arg1, uint128 arg2) {
    if msg.sender == this.address:
        if ext_code.size(arg1):
            call arg1.0x90bc1693 with:
                 gas gas_remaining - 710 wei
                args arg2
            if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(arg1):
                call arg1.0x90bc1693 with:
                     gas gas_remaining - 710 wei
                    args arg2
                if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(arg1):
                        call arg1.0x90bc1693 with:
                             gas gas_remaining - 710 wei
                            args arg2
                        if ext_call.success:
    revert
}

function mint(address arg1, uint128 arg2) {
    if msg.sender == this.address:
        if ext_code.size(arg1):
            call arg1.0x69d3e20e with:
                 gas gas_remaining - 710 wei
                args arg2
            if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(arg1):
                call arg1.0x69d3e20e with:
                     gas gas_remaining - 710 wei
                    args arg2
                if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(arg1):
                        call arg1.0x69d3e20e with:
                             gas gas_remaining - 710 wei
                            args arg2
                        if ext_call.success:
    revert
}

function mint(uint128 arg1) {
    if msg.sender == this.address:
        if ext_code.size(tokenAddress):
            call tokenAddress.0x69d3e20e with:
                 gas gas_remaining - 710 wei
                args arg1
            if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(tokenAddress):
                call tokenAddress.0x69d3e20e with:
                     gas gas_remaining - 710 wei
                    args arg1
                if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x69d3e20e with:
                             gas gas_remaining - 710 wei
                            args arg1
                        if ext_call.success:
    revert
}

function burn(uint128 arg1) {
    if msg.sender == this.address:
        if ext_code.size(tokenAddress):
            call tokenAddress.0x90bc1693 with:
                 gas gas_remaining - 710 wei
                args arg1
            if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(tokenAddress):
                call tokenAddress.0x90bc1693 with:
                     gas gas_remaining - 710 wei
                    args arg1
                if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x90bc1693 with:
                             gas gas_remaining - 710 wei
                            args arg1
                        if ext_call.success:
    revert
}

function burn(address arg1) {
    if msg.sender == this.address:
        if ext_code.size(arg1):
            call arg1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                if ext_code.size(arg1):
                    call arg1.0x90bc1693 with:
                         gas gas_remaining - 710 wei
                        args uint128(ext_call.return_data[0])
                    if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(arg1):
                call arg1.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                if ext_call.success:
                    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                    if ext_code.size(arg1):
                        call arg1.0x90bc1693 with:
                             gas gas_remaining - 710 wei
                            args uint128(ext_call.return_data[0])
                        if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(arg1):
                        call arg1.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        if ext_call.success:
                            require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                            if ext_code.size(arg1):
                                call arg1.0x90bc1693 with:
                                     gas gas_remaining - 710 wei
                                    args uint128(ext_call.return_data[0])
                                if ext_call.success:
    revert
}

function burn() {
    if msg.sender == this.address:
        if ext_code.size(tokenAddress):
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                if ext_code.size(tokenAddress):
                    call tokenAddress.0x90bc1693 with:
                         gas gas_remaining - 710 wei
                        args uint128(ext_call.return_data[0])
                    if ext_call.success:
    else:
        if owner == msg.sender:
            if ext_code.size(tokenAddress):
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                if ext_call.success:
                    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x90bc1693 with:
                             gas gas_remaining - 710 wei
                            args uint128(ext_call.return_data[0])
                        if ext_call.success:
        else:
            require authorityAddress
            if ext_code.size(authorityAddress):
                call authorityAddress.0xb7009613 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), call.func_hash
                if ext_call.success:
                    require ext_call.return_data[0]
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        if ext_call.success:
                            require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0x90bc1693 with:
                                     gas gas_remaining - 710 wei
                                    args uint128(ext_call.return_data[0])
                                if ext_call.success:
    revert
}



}

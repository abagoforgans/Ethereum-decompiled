contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 stor7;

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function sub_5ef62bdb(?) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    stor7 = arg1
    return 0
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function sub_0de82637(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(stor2)
    call stor2.ask(uint256 arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_04a8978a(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(stor4)
    staticcall stor4.getBestOffer(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor5, stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_86705f39(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(stor4)
    staticcall stor4.getBestOffer(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor5, stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.offers(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[0]
}

function sub_3f55d34e(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(stor2)
    staticcall stor2.gap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -ext_call.return_data[0] + 10^18 > 10^18:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(stor2)
    staticcall stor2.fog() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not -ext_call.return_data[0] + 10^18:
        return 0
    require -ext_call.return_data[0] + 10^18
    if (10^18 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / -ext_call.return_data[0] + 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    return ((10^18 * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
}

function sub_79212770(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(stor4)
    staticcall stor4.getBestOffer(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor5, stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.offers(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    require ext_call.return_data[64]
    return ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64])
}

function sub_6ec02110(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(stor2)
    staticcall stor2.fog() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.ask(uint256 arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_9657529b(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(stor2)
    staticcall stor2.fog() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 < 10^18 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    require ext_code.size(stor2)
    staticcall stor2.gap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 1000000000 * 10^18 != (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'ds-math-mul-overflow'
    if (1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'ds-math-add-overflow'
    require ext_call.return_data[0]
    return ((1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
}

function sub_fbfff239(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(stor2)
    staticcall stor2.fog() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 < 10^18 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    require ext_code.size(stor2)
    staticcall stor2.gap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 1000000000 * 10^18 != (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'ds-math-mul-overflow'
    if (1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'ds-math-add-overflow'
    require ext_call.return_data[0]
    if (1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] <= stor7:
        return 0
    return ((1000000000 * 10^18 * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
}

function sub_fde73e4d(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if msg.sender == this.address:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _101 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
            require ext_code.size(address(_101))
            staticcall address(_101).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg2.length
            _137 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = this.address
            require ext_code.size(address(_137))
            staticcall address(_137).0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
        s = 0
        while s < arg1.length:
            require s < arg1.length
            _176 = mem[(32 * s) + 128]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * s) + 128]
            require ext_code.size(stor3)
            call stor3.safe(bytes32 arg1) with:
                 gas gas_remaining wei
                args _176
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require s < arg1.length
                _194 = mem[(32 * s) + 128]
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x40cc885400000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = _194
                require ext_code.size(stor3)
                call stor3.bite(bytes32 arg1) with:
                     gas gas_remaining wei
                    args _194
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            continue 
    else:
        if msg.sender == owner:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                _97 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
                require ext_code.size(address(_97))
                staticcall address(_97).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg2.length
                _133 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + (32 * arg2.length) + 196] = this.address
                require ext_code.size(address(_133))
                staticcall address(_133).0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                continue 
            s = 0
            while s < arg1.length:
                require s < arg1.length
                _172 = mem[(32 * s) + 128]
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * s) + 128]
                require ext_code.size(stor3)
                call stor3.safe(bytes32 arg1) with:
                     gas gas_remaining wei
                    args _172
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require s < arg1.length
                    _191 = mem[(32 * s) + 128]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x40cc885400000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = _191
                    require ext_code.size(stor3)
                    call stor3.bite(bytes32 arg1) with:
                         gas gas_remaining wei
                        args _191
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
        else:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = this.address
            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                _93 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
                require ext_code.size(address(_93))
                staticcall address(_93).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg2.length
                _129 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + (32 * arg2.length) + 196] = this.address
                require ext_code.size(address(_129))
                staticcall address(_129).0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                continue 
            s = 0
            while s < arg1.length:
                require s < arg1.length
                _168 = mem[(32 * s) + 128]
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * s) + 128]
                require ext_code.size(stor3)
                call stor3.safe(bytes32 arg1) with:
                     gas gas_remaining wei
                    args _168
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require s < arg1.length
                    _188 = mem[(32 * s) + 128]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x40cc885400000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = _188
                    require ext_code.size(stor3)
                    call stor3.bite(bytes32 arg1) with:
                         gas gas_remaining wei
                        args _188
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
    idx = 0
    while idx < arg2.length:
        idx = idx + 1
        continue 
}



}

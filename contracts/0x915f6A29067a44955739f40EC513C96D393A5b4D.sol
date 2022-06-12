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

function sub_619b78db(?) {
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
    return (arg1 < stor7)
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

function sub_9c59b4a8(?) {
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
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8225c268(?) {
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
           args stor6, stor5
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

function sub_daed1513(?) {
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
    require ext_code.size(stor2)
    staticcall stor2.gap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -ext_call.return_data[0] + 10^18 > 10^18:
        revert with 0, 'ds-math-sub-underflow'
    if -ext_call.return_data[0] + 10^18:
        require -ext_call.return_data[0] + 10^18
        if (10^18 * arg1) - (ext_call.return_data[0] * arg1) / -ext_call.return_data[0] + 10^18 != arg1:
            revert with 0, 'ds-math-mul-overflow'
        else:
            return 0
    else:
        return 0
}

function sub_fbe3b3d6(?) {
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
    require ext_code.size(stor2)
    call stor2.ask(uint256 arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return -1 * 10^18
    require ext_call.return_data[0]
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if (arg1 * ext_call.return_data[0]) + 500000000 * 10^18 < arg1 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    return (((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18)
}

function sub_529e60a2(?) {
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
           args stor6, stor5
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

function sub_78128efb(?) {
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
    if ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / 2) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
        revert with 0, 'ds-math-add-overflow'
    require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
    return (((10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / 2) + 1000000000000000000 * 10^18 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64])
}

function sub_a916b518(?) {
    require calldata.size - 4 >= 64
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
    if not ext_call.return_data[0]:
        require ext_code.size(stor4)
        staticcall stor4.getBestOffer(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor6, stor5
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
        if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
            if ext_call.return_data[0] <= -1 * 10^18:
                if ext_call.return_data[0] <= 0:
                    return ext_call.return_data[0]
                else:
                    return 0
            else:
                return 0
        require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
        if arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
            revert with 0, 'ds-math-add-overflow'
        if ext_call.return_data[0] <= -1 * 10^18:
            if ext_call.return_data[0] <= (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                return ext_call.return_data[0]
        else:
            if -1 * 10^18 <= (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                return -1 * 10^18
    else:
        require ext_call.return_data[0]
        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
            revert with 0, 'ds-math-mul-overflow'
        if (arg1 * ext_call.return_data[0]) + 500000000 * 10^18 < arg1 * ext_call.return_data[0]:
            revert with 0, 'ds-math-add-overflow'
        require ext_code.size(stor4)
        staticcall stor4.getBestOffer(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor6, stor5
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
        if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
            if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                if ext_call.return_data[0] <= 0:
                    return ext_call.return_data[0]
            else:
                if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= 0:
                    return (((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18)
            return 0
        require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
        if arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
            revert with 0, 'ds-math-add-overflow'
        if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
            if ext_call.return_data[0] <= (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                return ext_call.return_data[0]
        else:
            if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                return (((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18)
    return ((arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18)
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

function sub_050b4bfb(?) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            else:
                require ext_code.size(authorityAddress)
                staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                        gas gas_remaining wei
                       args msg.sender, address(this.address), call.func_hash
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ds-auth-unauthorized'
                    else:
                        require ext_code.size(stor2)
                        staticcall stor2.gap() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if -ext_call.return_data[0] + 10^18 > 10^18:
                                revert with 0, 'ds-math-sub-underflow'
                            else:
                                if not -ext_call.return_data[0] + 10^18:
                                    if 0 >= stor7:
                                        require ext_code.size(stor2)
                                        call stor2.ask(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                require ext_code.size(stor4)
                                                staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args stor6, stor5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.offers(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 192
                                                        require ext_code.size(stor5)
                                                        staticcall stor5.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                                revert with 0, 'ds-math-mul-overflow'
                                                            else:
                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                                    revert with 0, 'ds-math-add-overflow'
                                                                else:
                                                                    require ext_call.return_data[64]
                                                                    if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                        if ext_call.return_data[0] <= -1 * 10^18:
                                                                            if ext_call.return_data[0] <= 0:
                                                                                return 0
                                                                            else:
                                                                                return 0
                                                                        else:
                                                                            return 0
                                                                    else:
                                                                        require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                                        if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                        else:
                                                                            if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                                revert with 0, 'ds-math-add-overflow'
                                                                            else:
                                                                                if ext_call.return_data[0] <= -1 * 10^18:
                                                                                    if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                        return 0
                                                                                    else:
                                                                                        return 0
                                                                                else:
                                                                                    if -1 * 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                        return 0
                                                                                    else:
                                                                                        return 0
                                            else:
                                                require ext_call.return_data[0]
                                                if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (arg1 * ext_call.return_data[0]) + 500000000 * 10^18 < arg1 * ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require ext_code.size(stor4)
                                                        staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args stor6, stor5
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_code.size(stor4)
                                                            staticcall stor4.offers(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 192
                                                                require ext_code.size(stor5)
                                                                staticcall stor5.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                    else:
                                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                                            revert with 0, 'ds-math-add-overflow'
                                                                        else:
                                                                            require ext_call.return_data[64]
                                                                            if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                                if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                                    if ext_call.return_data[0] <= 0:
                                                                                        return 0
                                                                                    else:
                                                                                        return 0
                                                                                else:
                                                                                    if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= 0:
                                                                                        return 0
                                                                                    else:
                                                                                        return 0
                                                                            else:
                                                                                require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                                                if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                else:
                                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                    else:
                                                                                        if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                                            if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                                return 0
                                                                                            else:
                                                                                                return 0
                                                                                        else:
                                                                                            if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                                return 0
                                                                                            else:
                                                                                                return 0
                                    else:
                                        return 0
                                else:
                                    require -ext_call.return_data[0] + 10^18
                                    if (10^18 * arg1) - (ext_call.return_data[0] * arg1) / -ext_call.return_data[0] + 10^18 != arg1:
                                        revert with 0, 'ds-math-mul-overflow'
                                    else:
                                        if (10^18 * arg1) + (-1 * ext_call.return_data[0] * arg1) + 5 * 10^17 / 10^18 >= stor7:
                                            require ext_code.size(stor2)
                                            call stor2.ask(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args stor6, stor5
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_code.size(stor4)
                                                        staticcall stor4.offers(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 192
                                                            require ext_code.size(stor5)
                                                            staticcall stor5.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                                        revert with 0, 'ds-math-add-overflow'
                                                                    else:
                                                                        require ext_call.return_data[64]
                                                                        if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                            if ext_call.return_data[0] <= -1 * 10^18:
                                                                                if ext_call.return_data[0] <= 0:
                                                                                    return 0
                                                                                else:
                                                                                    return 0
                                                                            else:
                                                                                return 0
                                                                        else:
                                                                            require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                                            if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                            else:
                                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                else:
                                                                                    if ext_call.return_data[0] <= -1 * 10^18:
                                                                                        if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                            return 0
                                                                                        else:
                                                                                            return 0
                                                                                    else:
                                                                                        if -1 * 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                            return 0
                                                                                        else:
                                                                                            return 0
                                                else:
                                                    require ext_call.return_data[0]
                                                    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (arg1 * ext_call.return_data[0]) + 500000000 * 10^18 < arg1 * ext_call.return_data[0]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require ext_code.size(stor4)
                                                            staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args stor6, stor5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_code.size(stor4)
                                                                staticcall stor4.offers(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 192
                                                                    require ext_code.size(stor5)
                                                                    staticcall stor5.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                        else:
                                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                                                revert with 0, 'ds-math-add-overflow'
                                                                            else:
                                                                                require ext_call.return_data[64]
                                                                                if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                                    if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                                        if ext_call.return_data[0] <= 0:
                                                                                            return 0
                                                                                        else:
                                                                                            return 0
                                                                                    else:
                                                                                        if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= 0:
                                                                                            return 0
                                                                                        else:
                                                                                            return 0
                                                                                else:
                                                                                    require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                                                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                                    else:
                                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                        else:
                                                                                            if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                                                if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                                    return 0
                                                                                                else:
                                                                                                    return 0
                                                                                            else:
                                                                                                if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                                    return 0
                                                                                                else:
                                                                                                    return 0
                                        else:
                                            return 0
        else:
            require ext_code.size(stor2)
            staticcall stor2.gap() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if -ext_call.return_data[0] + 10^18 > 10^18:
                    revert with 0, 'ds-math-sub-underflow'
                else:
                    if not -ext_call.return_data[0] + 10^18:
                        if 0 >= stor7:
                            require ext_code.size(stor2)
                            call stor2.ask(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor4)
                                    staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args stor6, stor5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(stor4)
                                        staticcall stor4.offers(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 192
                                            require ext_code.size(stor5)
                                            staticcall stor5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require ext_call.return_data[64]
                                                        if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                            if ext_call.return_data[0] <= -1 * 10^18:
                                                                if ext_call.return_data[0] <= 0:
                                                                    return 0
                                                                else:
                                                                    return 0
                                                            else:
                                                                return 0
                                                        else:
                                                            require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                            if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                revert with 0, 'ds-math-mul-overflow'
                                                            else:
                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                    revert with 0, 'ds-math-add-overflow'
                                                                else:
                                                                    if ext_call.return_data[0] <= -1 * 10^18:
                                                                        if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                            return 0
                                                                        else:
                                                                            return 0
                                                                    else:
                                                                        if -1 * 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                            return 0
                                                                        else:
                                                                            return 0
                                else:
                                    require ext_call.return_data[0]
                                    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                        revert with 0, 'ds-math-mul-overflow'
                                    else:
                                        if (arg1 * ext_call.return_data[0]) + 500000000 * 10^18 < arg1 * ext_call.return_data[0]:
                                            revert with 0, 'ds-math-add-overflow'
                                        else:
                                            require ext_code.size(stor4)
                                            staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args stor6, stor5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_code.size(stor4)
                                                staticcall stor4.offers(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 192
                                                    require ext_code.size(stor5)
                                                    staticcall stor5.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        else:
                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                                revert with 0, 'ds-math-add-overflow'
                                                            else:
                                                                require ext_call.return_data[64]
                                                                if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                    if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                        if ext_call.return_data[0] <= 0:
                                                                            return 0
                                                                        else:
                                                                            return 0
                                                                    else:
                                                                        if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= 0:
                                                                            return 0
                                                                        else:
                                                                            return 0
                                                                else:
                                                                    require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                            revert with 0, 'ds-math-add-overflow'
                                                                        else:
                                                                            if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                                if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                    return 0
                                                                                else:
                                                                                    return 0
                                                                            else:
                                                                                if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                    return 0
                                                                                else:
                                                                                    return 0
                        else:
                            return 0
                    else:
                        require -ext_call.return_data[0] + 10^18
                        if (10^18 * arg1) - (ext_call.return_data[0] * arg1) / -ext_call.return_data[0] + 10^18 != arg1:
                            revert with 0, 'ds-math-mul-overflow'
                        else:
                            if (10^18 * arg1) + (-1 * ext_call.return_data[0] * arg1) + 5 * 10^17 / 10^18 >= stor7:
                                require ext_code.size(stor2)
                                call stor2.ask(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(stor4)
                                        staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args stor6, stor5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_code.size(stor4)
                                            staticcall stor4.offers(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 192
                                                require ext_code.size(stor5)
                                                staticcall stor5.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require ext_call.return_data[64]
                                                            if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                if ext_call.return_data[0] <= -1 * 10^18:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        return 0
                                                                    else:
                                                                        return 0
                                                                else:
                                                                    return 0
                                                            else:
                                                                require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                                if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                        revert with 0, 'ds-math-add-overflow'
                                                                    else:
                                                                        if ext_call.return_data[0] <= -1 * 10^18:
                                                                            if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                return 0
                                                                            else:
                                                                                return 0
                                                                        else:
                                                                            if -1 * 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                return 0
                                                                            else:
                                                                                return 0
                                    else:
                                        require ext_call.return_data[0]
                                        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                            revert with 0, 'ds-math-mul-overflow'
                                        else:
                                            if (arg1 * ext_call.return_data[0]) + 500000000 * 10^18 < arg1 * ext_call.return_data[0]:
                                                revert with 0, 'ds-math-add-overflow'
                                            else:
                                                require ext_code.size(stor4)
                                                staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args stor6, stor5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.offers(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 192
                                                        require ext_code.size(stor5)
                                                        staticcall stor5.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                                revert with 0, 'ds-math-mul-overflow'
                                                            else:
                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                                    revert with 0, 'ds-math-add-overflow'
                                                                else:
                                                                    require ext_call.return_data[64]
                                                                    if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                        if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                            if ext_call.return_data[0] <= 0:
                                                                                return 0
                                                                            else:
                                                                                return 0
                                                                        else:
                                                                            if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= 0:
                                                                                return 0
                                                                            else:
                                                                                return 0
                                                                    else:
                                                                        require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                                        if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                        else:
                                                                            if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                                revert with 0, 'ds-math-add-overflow'
                                                                            else:
                                                                                if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                                    if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                        return 0
                                                                                    else:
                                                                                        return 0
                                                                                else:
                                                                                    if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                        return 0
                                                                                    else:
                                                                                        return 0
                            else:
                                return 0
    else:
        require ext_code.size(stor2)
        staticcall stor2.gap() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if -ext_call.return_data[0] + 10^18 > 10^18:
                revert with 0, 'ds-math-sub-underflow'
            else:
                if not -ext_call.return_data[0] + 10^18:
                    if 0 >= stor7:
                        require ext_code.size(stor2)
                        call stor2.ask(uint256 arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(stor4)
                                staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args stor6, stor5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(stor4)
                                    staticcall stor4.offers(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 192
                                        require ext_code.size(stor5)
                                        staticcall stor5.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            else:
                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                else:
                                                    require ext_call.return_data[64]
                                                    if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                        if ext_call.return_data[0] <= -1 * 10^18:
                                                            if ext_call.return_data[0] <= 0:
                                                                return 0
                                                            else:
                                                                return 0
                                                        else:
                                                            return 0
                                                    else:
                                                        require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                        if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        else:
                                                            if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                revert with 0, 'ds-math-add-overflow'
                                                            else:
                                                                if ext_call.return_data[0] <= -1 * 10^18:
                                                                    if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                        return 0
                                                                    else:
                                                                        return 0
                                                                else:
                                                                    if -1 * 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                        return 0
                                                                    else:
                                                                        return 0
                            else:
                                require ext_call.return_data[0]
                                if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                    revert with 0, 'ds-math-mul-overflow'
                                else:
                                    if (arg1 * ext_call.return_data[0]) + 500000000 * 10^18 < arg1 * ext_call.return_data[0]:
                                        revert with 0, 'ds-math-add-overflow'
                                    else:
                                        require ext_code.size(stor4)
                                        staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args stor6, stor5
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_code.size(stor4)
                                            staticcall stor4.offers(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 192
                                                require ext_code.size(stor5)
                                                staticcall stor5.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    else:
                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        else:
                                                            require ext_call.return_data[64]
                                                            if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        return 0
                                                                    else:
                                                                        return 0
                                                                else:
                                                                    if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= 0:
                                                                        return 0
                                                                    else:
                                                                        return 0
                                                            else:
                                                                require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                                if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                        revert with 0, 'ds-math-add-overflow'
                                                                    else:
                                                                        if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                            if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                return 0
                                                                            else:
                                                                                return 0
                                                                        else:
                                                                            if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                return 0
                                                                            else:
                                                                                return 0
                    else:
                        return 0
                else:
                    require -ext_call.return_data[0] + 10^18
                    if (10^18 * arg1) - (ext_call.return_data[0] * arg1) / -ext_call.return_data[0] + 10^18 != arg1:
                        revert with 0, 'ds-math-mul-overflow'
                    else:
                        if (10^18 * arg1) + (-1 * ext_call.return_data[0] * arg1) + 5 * 10^17 / 10^18 >= stor7:
                            require ext_code.size(stor2)
                            call stor2.ask(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor4)
                                    staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args stor6, stor5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(stor4)
                                        staticcall stor4.offers(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 192
                                            require ext_code.size(stor5)
                                            staticcall stor5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                else:
                                                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    else:
                                                        require ext_call.return_data[64]
                                                        if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                            if ext_call.return_data[0] <= -1 * 10^18:
                                                                if ext_call.return_data[0] <= 0:
                                                                    return 0
                                                                else:
                                                                    return 0
                                                            else:
                                                                return 0
                                                        else:
                                                            require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                            if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                revert with 0, 'ds-math-mul-overflow'
                                                            else:
                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                    revert with 0, 'ds-math-add-overflow'
                                                                else:
                                                                    if ext_call.return_data[0] <= -1 * 10^18:
                                                                        if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                            return 0
                                                                        else:
                                                                            return 0
                                                                    else:
                                                                        if -1 * 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                            return 0
                                                                        else:
                                                                            return 0
                                else:
                                    require ext_call.return_data[0]
                                    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                        revert with 0, 'ds-math-mul-overflow'
                                    else:
                                        if (arg1 * ext_call.return_data[0]) + 500000000 * 10^18 < arg1 * ext_call.return_data[0]:
                                            revert with 0, 'ds-math-add-overflow'
                                        else:
                                            require ext_code.size(stor4)
                                            staticcall stor4.getBestOffer(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args stor6, stor5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_code.size(stor4)
                                                staticcall stor4.offers(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 192
                                                    require ext_code.size(stor5)
                                                    staticcall stor5.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        else:
                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) < 10^18 * ext_call.return_data[0]:
                                                                revert with 0, 'ds-math-add-overflow'
                                                            else:
                                                                require ext_call.return_data[64]
                                                                if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                    if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                        if ext_call.return_data[0] <= 0:
                                                                            return 0
                                                                        else:
                                                                            return 0
                                                                    else:
                                                                        if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= 0:
                                                                            return 0
                                                                        else:
                                                                            return 0
                                                                else:
                                                                    require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                                                                    if ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != ext_call.return_data[0]:
                                                                        revert with 0, 'ds-math-mul-overflow'
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
                                                                            revert with 0, 'ds-math-add-overflow'
                                                                        else:
                                                                            if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18:
                                                                                if ext_call.return_data[0] <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                    return 0
                                                                                else:
                                                                                    return 0
                                                                            else:
                                                                                if ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - 10^18 <= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
                                                                                    return 0
                                                                                else:
                                                                                    return 0
                        else:
                            return 0
}



}

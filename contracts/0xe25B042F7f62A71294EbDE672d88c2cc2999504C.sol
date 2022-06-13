contract main {




// =====================  Runtime code  =====================


#
#  - sub_63e99408(?)
#  - sub_65d64cc0(?)
#
const sub_400ce7fe(?) = 'la piraterie n'est jamais finie'


address authorityAddress;
address owner;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint8 stor8;

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
}

function sub_d094747c(?) {
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
    stor8 = arg1
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

function sub_ff1c0ea0(?) {
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
    call stor2.bust(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8ea5ddd5: arg1 << 248, arg2
    require ext_code.size(stor3)
    call stor3.exit(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_1f459b76(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[ceil32(arg1.length) + 132] = msg.sender
            mem[ceil32(arg1.length) + 164] = this.address
            mem[ceil32(arg1.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    idx = 0
    while idx < arg1.length:
        call mem[idx + 128 len 20].mem[idx + 180 len 4] with:
             gas gas_remaining - 5000 wei
            args mem[idx + 184 len mem[idx + 148] - 4]
        require ext_call.success
        idx = idx + mem[idx + 148] + 52
        continue 
}

function sub_46b963ee(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = this.address
            mem[(32 * arg1.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        if uint8(idx) != arg2:
            idx = idx + 1
            continue 
        require ext_code.size(stor3)
        staticcall stor3.cups(bytes32 arg1) with:
                gas gas_remaining wei
               args mem[(32 * uint8(idx)) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        return ext_call.return_data[64]
    return 42
}

function sub_432a3335(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if msg.sender == this.address:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _59 = mem[(32 * idx) + 128]
            require idx < arg1.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_59))
            call address(_59).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if msg.sender == owner:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _57 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_57))
                call address(_57).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _55 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_55))
                call address(_55).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
}

function sub_fddd50b1(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if msg.sender == this.address:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _49 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
            require ext_code.size(stor3)
            call stor3.safe(bytes32 arg1) with:
                 gas gas_remaining wei
                args _49
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(32 * arg1.length) + 128] = 0x40cc885400000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 132] = _49
                require ext_code.size(stor3)
                call stor3.bite(bytes32 arg1) with:
                     gas gas_remaining wei
                    args _49
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if msg.sender == owner:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _46 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
                require ext_code.size(stor3)
                call stor3.safe(bytes32 arg1) with:
                     gas gas_remaining wei
                    args _46
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    mem[(32 * arg1.length) + 128] = 0x40cc885400000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + 132] = _46
                    require ext_code.size(stor3)
                    call stor3.bite(bytes32 arg1) with:
                         gas gas_remaining wei
                        args _46
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = this.address
            mem[(32 * arg1.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _43 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
                require ext_code.size(stor3)
                call stor3.safe(bytes32 arg1) with:
                     gas gas_remaining wei
                    args _43
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    mem[(32 * arg1.length) + 128] = 0x40cc885400000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + 132] = _43
                    require ext_code.size(stor3)
                    call stor3.bite(bytes32 arg1) with:
                         gas gas_remaining wei
                        args _43
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
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
        args 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require ext_code.size(stor3)
    staticcall stor3.per() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    require ext_call.return_data[0]
    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] >= (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    require ext_call.return_data[0]
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if (arg1 * ext_call.return_data[0]) + 5 * 10^17 < arg1 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10^18 > (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
        revert with 0, 'ds-math-sub-underflow'
    if ext_call.return_data[0] <= ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10^18:
        if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
            if ext_call.return_data[0] <= 0:
                return ext_call.return_data[0]
            else:
                return 0
        require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
        if arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
            revert with 0, 'ds-math-add-overflow'
        if ext_call.return_data[0] <= (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
            return ext_call.return_data[0]
    else:
        if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
            if ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10^18 <= 0:
                return (((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10^18)
            else:
                return 0
        require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
        if arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 < arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]:
            revert with 0, 'ds-math-add-overflow'
        if ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10^18 <= (arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18:
            return (((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10^18)
    return ((arg2 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]) + 5 * 10^17 / 10^18)
}

function sub_8f5c0457(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if msg.sender == this.address:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if arg2 <= 0:
                _232 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                require ext_code.size(address(_232))
                staticcall address(_232).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg1.length
                _259 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = this.address
                require ext_code.size(address(_259))
                staticcall address(_259).0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg1.length
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    _322 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    mem[(32 * arg1.length) + 164] = this.address
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    require ext_code.size(address(_322))
                    call address(_322).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                else:
                    _325 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    mem[(32 * arg1.length) + 164] = this.address
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    require ext_code.size(address(_325))
                    call address(_325).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
            else:
                _235 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                require ext_code.size(address(_235))
                staticcall address(_235).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg1.length
                if ext_call.return_data[0] <= arg2:
                    _286 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    mem[(32 * arg1.length) + 164] = this.address
                    require ext_code.size(address(_286))
                    staticcall address(_286).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg1.length
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        _376 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(_376))
                        call address(_376).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                    else:
                        _379 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(_379))
                        call address(_379).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                else:
                    _289 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    mem[(32 * arg1.length) + 164] = this.address
                    require ext_code.size(address(_289))
                    staticcall address(_289).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg1.length
                    if arg2 <= ext_call.return_data[0]:
                        _382 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = arg2
                        require ext_code.size(address(_382))
                        call address(_382).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                    else:
                        _385 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(_385))
                        call address(_385).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if msg.sender == owner:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                if arg2 <= 0:
                    _226 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    require ext_code.size(address(_226))
                    staticcall address(_226).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg1.length
                    _256 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    mem[(32 * arg1.length) + 164] = this.address
                    require ext_code.size(address(_256))
                    staticcall address(_256).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg1.length
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        _316 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(_316))
                        call address(_316).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                    else:
                        _319 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(_319))
                        call address(_319).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                else:
                    _229 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    require ext_code.size(address(_229))
                    staticcall address(_229).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg1.length
                    if ext_call.return_data[0] <= arg2:
                        _280 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        require ext_code.size(address(_280))
                        staticcall address(_280).0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < arg1.length
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            _364 = mem[(32 * idx) + 128]
                            mem[(32 * arg1.length) + 132] = msg.sender
                            mem[(32 * arg1.length) + 164] = this.address
                            mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(address(_364))
                            call address(_364).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                        else:
                            _367 = mem[(32 * idx) + 128]
                            mem[(32 * arg1.length) + 132] = msg.sender
                            mem[(32 * arg1.length) + 164] = this.address
                            mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(address(_367))
                            call address(_367).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                    else:
                        _283 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        require ext_code.size(address(_283))
                        staticcall address(_283).0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < arg1.length
                        if arg2 <= ext_call.return_data[0]:
                            _370 = mem[(32 * idx) + 128]
                            mem[(32 * arg1.length) + 132] = msg.sender
                            mem[(32 * arg1.length) + 164] = this.address
                            mem[(32 * arg1.length) + 196] = arg2
                            require ext_code.size(address(_370))
                            call address(_370).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                        else:
                            _373 = mem[(32 * idx) + 128]
                            mem[(32 * arg1.length) + 132] = msg.sender
                            mem[(32 * arg1.length) + 164] = this.address
                            mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(address(_373))
                            call address(_373).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = this.address
            mem[(32 * arg1.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                if arg2 <= 0:
                    _220 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    require ext_code.size(address(_220))
                    staticcall address(_220).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg1.length
                    _253 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    mem[(32 * arg1.length) + 164] = this.address
                    require ext_code.size(address(_253))
                    staticcall address(_253).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg1.length
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        _310 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(_310))
                        call address(_310).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                    else:
                        _313 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(_313))
                        call address(_313).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                else:
                    _223 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 132] = msg.sender
                    require ext_code.size(address(_223))
                    staticcall address(_223).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg1.length
                    if ext_call.return_data[0] <= arg2:
                        _274 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        require ext_code.size(address(_274))
                        staticcall address(_274).0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < arg1.length
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            _352 = mem[(32 * idx) + 128]
                            mem[(32 * arg1.length) + 132] = msg.sender
                            mem[(32 * arg1.length) + 164] = this.address
                            mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(address(_352))
                            call address(_352).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                        else:
                            _355 = mem[(32 * idx) + 128]
                            mem[(32 * arg1.length) + 132] = msg.sender
                            mem[(32 * arg1.length) + 164] = this.address
                            mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(address(_355))
                            call address(_355).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                    else:
                        _277 = mem[(32 * idx) + 128]
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        require ext_code.size(address(_277))
                        staticcall address(_277).0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < arg1.length
                        if arg2 <= ext_call.return_data[0]:
                            _358 = mem[(32 * idx) + 128]
                            mem[(32 * arg1.length) + 132] = msg.sender
                            mem[(32 * arg1.length) + 164] = this.address
                            mem[(32 * arg1.length) + 196] = arg2
                            require ext_code.size(address(_358))
                            call address(_358).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                        else:
                            _361 = mem[(32 * idx) + 128]
                            mem[(32 * arg1.length) + 132] = msg.sender
                            mem[(32 * arg1.length) + 164] = this.address
                            mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(address(_361))
                            call address(_361).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
}



}

contract main {




// =====================  Runtime code  =====================


const position = 0

const identifier = 'UserWhitelist'


address authorityAddress;
address owner;
mapping of uint8 stor2;

function sub_08a6d790(?) {
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function whitelisted(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(arg1);
}

function addToWhitelist(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    stor2[address(arg1)] = 1
    emit 0x599cf62b: arg1
}

function setAuthority(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function removeFromWhitelist(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    stor2[address(arg1)] = 0
    emit 0xe71ba207: arg1
}

function sub_045fb888(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if this.address == msg.sender:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _85 = mem[(32 * idx) + 128]
            if this.address == msg.sender:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                stor2[mem[(32 * idx) + 140 len 20]] = 0
                emit 0xe71ba207: mem[(32 * idx) + 140 len 20]
            else:
                if owner == msg.sender:
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 140 len 20]] = 0
                    emit 0xe71ba207: mem[(32 * idx) + 140 len 20]
                else:
                    if not authorityAddress:
                        revert with 0, 'ds-auth-unauthorized'
                    mem[(32 * arg1.length) + 132] = msg.sender
                    mem[(32 * arg1.length) + 164] = this.address
                    mem[(32 * arg1.length) + 196] = call.func_hash
                    require ext_code.size(authorityAddress)
                    call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, call.func_hash
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ds-auth-unauthorized'
                    mem[0] = address(_85)
                    mem[32] = 2
                    stor2[address(_85)] = 0
                    emit 0xe71ba207: address(_85)
            idx = idx + 1
            continue 
    else:
        if owner == msg.sender:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _84 = mem[(32 * idx) + 128]
                if this.address == msg.sender:
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 140 len 20]] = 0
                    emit 0xe71ba207: mem[(32 * idx) + 140 len 20]
                else:
                    if owner == msg.sender:
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 2
                        stor2[mem[(32 * idx) + 140 len 20]] = 0
                        emit 0xe71ba207: mem[(32 * idx) + 140 len 20]
                    else:
                        if not authorityAddress:
                            revert with 0, 'ds-auth-unauthorized'
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = call.func_hash
                        require ext_code.size(authorityAddress)
                        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, call.func_hash
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ds-auth-unauthorized'
                        mem[0] = address(_84)
                        mem[32] = 2
                        stor2[address(_84)] = 0
                        emit 0xe71ba207: address(_84)
                idx = idx + 1
                continue 
        else:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = this.address
            mem[(32 * arg1.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _83 = mem[(32 * idx) + 128]
                if this.address == msg.sender:
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 140 len 20]] = 0
                    emit 0xe71ba207: mem[(32 * idx) + 140 len 20]
                else:
                    if owner == msg.sender:
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 2
                        stor2[mem[(32 * idx) + 140 len 20]] = 0
                        emit 0xe71ba207: mem[(32 * idx) + 140 len 20]
                    else:
                        if not authorityAddress:
                            revert with 0, 'ds-auth-unauthorized'
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = call.func_hash
                        require ext_code.size(authorityAddress)
                        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, call.func_hash
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ds-auth-unauthorized'
                        mem[0] = address(_83)
                        mem[32] = 2
                        stor2[address(_83)] = 0
                        emit 0xe71ba207: address(_83)
                idx = idx + 1
                continue 
}

function batchAddToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if this.address == msg.sender:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _85 = mem[(32 * idx) + 128]
            if this.address == msg.sender:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                stor2[mem[(32 * idx) + 140 len 20]] = 1
                emit 0x599cf62b: mem[(32 * idx) + 140 len 20]
            else:
                if owner == msg.sender:
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 140 len 20]] = 1
                    emit 0x599cf62b: mem[(32 * idx) + 140 len 20]
                else:
                    if not authorityAddress:
                        revert with 0, 'ds-auth-unauthorized'
                    mem[(32 * arg1.length) + 132] = msg.sender
                    mem[(32 * arg1.length) + 164] = this.address
                    mem[(32 * arg1.length) + 196] = call.func_hash
                    require ext_code.size(authorityAddress)
                    call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, call.func_hash
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ds-auth-unauthorized'
                    mem[0] = address(_85)
                    mem[32] = 2
                    stor2[address(_85)] = 1
                    emit 0x599cf62b: address(_85)
            idx = idx + 1
            continue 
    else:
        if owner == msg.sender:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _84 = mem[(32 * idx) + 128]
                if this.address == msg.sender:
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 140 len 20]] = 1
                    emit 0x599cf62b: mem[(32 * idx) + 140 len 20]
                else:
                    if owner == msg.sender:
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 2
                        stor2[mem[(32 * idx) + 140 len 20]] = 1
                        emit 0x599cf62b: mem[(32 * idx) + 140 len 20]
                    else:
                        if not authorityAddress:
                            revert with 0, 'ds-auth-unauthorized'
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = call.func_hash
                        require ext_code.size(authorityAddress)
                        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, call.func_hash
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ds-auth-unauthorized'
                        mem[0] = address(_84)
                        mem[32] = 2
                        stor2[address(_84)] = 1
                        emit 0x599cf62b: address(_84)
                idx = idx + 1
                continue 
        else:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = this.address
            mem[(32 * arg1.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _83 = mem[(32 * idx) + 128]
                if this.address == msg.sender:
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 140 len 20]] = 1
                    emit 0x599cf62b: mem[(32 * idx) + 140 len 20]
                else:
                    if owner == msg.sender:
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 2
                        stor2[mem[(32 * idx) + 140 len 20]] = 1
                        emit 0x599cf62b: mem[(32 * idx) + 140 len 20]
                    else:
                        if not authorityAddress:
                            revert with 0, 'ds-auth-unauthorized'
                        mem[(32 * arg1.length) + 132] = msg.sender
                        mem[(32 * arg1.length) + 164] = this.address
                        mem[(32 * arg1.length) + 196] = call.func_hash
                        require ext_code.size(authorityAddress)
                        call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, call.func_hash
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ds-auth-unauthorized'
                        mem[0] = address(_83)
                        mem[32] = 2
                        stor2[address(_83)] = 1
                        emit 0x599cf62b: address(_83)
                idx = idx + 1
                continue 
}



}

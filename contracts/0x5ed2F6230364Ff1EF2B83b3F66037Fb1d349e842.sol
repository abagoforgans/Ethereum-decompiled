contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[66 len 3254]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;

function etherTokens(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function registerEtherToken(address arg1, bool arg2) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    stor2[address(arg1)] = uint8(arg2)
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function convert(address[] arg1, uint256 arg2, uint256 arg3) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length > 2
    require arg1.length <= 21
    require 1 == bool(arg1.length)
    require 0 < arg1.length
    _6 = mem[128]
    if not msg.value:
        if msg.value <= 0:
            idx = 1
            s = 0
            s = 0
            t = 0
            t = mem[128]
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _371 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _394 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_394)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_394), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_394), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _394
                t = _371
                t = _394
                u = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg1.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_6))
            call address(_6).deposit() with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
            idx = 1
            s = 0
            s = 0
            t = 0
            t = _6
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _378 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _398 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_398)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_398), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_398), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _398
                t = _378
                t = _398
                u = ext_call.return_data[0]
                continue 
    else:
        require arg2 == msg.value
        require stor2[mem[140 len 20]]
        if msg.value <= 0:
            idx = 1
            s = 0
            s = 0
            t = 0
            t = mem[128]
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _385 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _402 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_402)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_402), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_402), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _402
                t = _385
                t = _402
                u = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg1.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_6))
            call address(_6).deposit() with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
            idx = 1
            s = 0
            s = 0
            t = 0
            t = _6
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _392 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _406 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_406)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_406), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_406), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _406
                t = _392
                t = _406
                u = ext_call.return_data[0]
                continue 
    require ext_code.size(address(s))
    if stor2[address(s)]:
        call address(s).withdrawTo(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, u
        require ext_call.success
        return u
    call address(s).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, u
    require ext_call.success
    require ext_call.return_data[0]
    return u
}

function convertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length > 2
    require arg1.length <= 21
    require 1 == bool(arg1.length)
    require 0 < arg1.length
    _6 = mem[128]
    if not msg.value:
        if msg.value <= 0:
            idx = 1
            s = 0
            s = 0
            t = 0
            t = mem[128]
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _371 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _394 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_394)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_394), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_394), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _394
                t = _371
                t = _394
                u = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg1.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_6))
            call address(_6).deposit() with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
            idx = 1
            s = 0
            s = 0
            t = 0
            t = _6
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _378 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _398 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_398)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_398), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_398), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _398
                t = _378
                t = _398
                u = ext_call.return_data[0]
                continue 
    else:
        require arg2 == msg.value
        require stor2[mem[140 len 20]]
        if msg.value <= 0:
            idx = 1
            s = 0
            s = 0
            t = 0
            t = mem[128]
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _385 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _402 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_402)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_402), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_402), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _402
                t = _385
                t = _402
                u = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg1.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_6))
            call address(_6).deposit() with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
            idx = 1
            s = 0
            s = 0
            t = 0
            t = _6
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _392 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _406 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_406)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_406), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_406), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _406
                t = _392
                t = _406
                u = ext_call.return_data[0]
                continue 
    require ext_code.size(address(s))
    if stor2[address(s)]:
        call address(s).withdrawTo(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg4), u
        require ext_call.success
        return u
    call address(s).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg4), u
    require ext_call.success
    require ext_call.return_data[0]
    return u
}

function claimAndConvert(address[] arg1, uint256 arg2, uint256 arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    _3 = mem[128]
    mem[(32 * arg1.length) + 132] = msg.sender
    mem[(32 * arg1.length) + 164] = this.address
    mem[(32 * arg1.length) + 196] = arg2
    require ext_code.size(address(_3))
    call address(_3).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require arg1.length > 2
    require arg1.length <= 21
    require 1 == bool(arg1.length)
    require 0 < arg1.length
    _13 = mem[128]
    if not msg.value:
        if msg.value <= 0:
            idx = 1
            s = 0
            s = 0
            t = 0
            t = mem[128]
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _378 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _401 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_401)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_401), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_401), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _401
                t = _378
                t = _401
                u = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg1.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_13))
            call address(_13).deposit() with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
            idx = 1
            s = 0
            s = 0
            t = 0
            t = _13
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _385 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _405 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_405)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_405), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_405), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _405
                t = _385
                t = _405
                u = ext_call.return_data[0]
                continue 
    else:
        require arg2 == msg.value
        require stor2[mem[140 len 20]]
        if msg.value <= 0:
            idx = 1
            s = 0
            s = 0
            t = 0
            t = mem[128]
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _392 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _409 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_409)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_409), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_409), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _409
                t = _392
                t = _409
                u = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg1.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_13))
            call address(_13).deposit() with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
            idx = 1
            s = 0
            s = 0
            t = 0
            t = _13
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _399 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _413 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_413)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_413), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_413), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _413
                t = _399
                t = _413
                u = ext_call.return_data[0]
                continue 
    require ext_code.size(address(s))
    if stor2[address(s)]:
        call address(s).withdrawTo(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, u
        require ext_call.success
        return u
    call address(s).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, u
    require ext_call.success
    require ext_call.return_data[0]
    return u
}

function claimAndConvertFor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    _3 = mem[128]
    mem[(32 * arg1.length) + 132] = msg.sender
    mem[(32 * arg1.length) + 164] = this.address
    mem[(32 * arg1.length) + 196] = arg2
    require ext_code.size(address(_3))
    call address(_3).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require arg1.length > 2
    require arg1.length <= 21
    require 1 == bool(arg1.length)
    require 0 < arg1.length
    _13 = mem[128]
    if not msg.value:
        if msg.value <= 0:
            idx = 1
            s = 0
            s = 0
            t = 0
            t = mem[128]
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _378 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _401 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_401)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_401), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_401), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _401
                t = _378
                t = _401
                u = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg1.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_13))
            call address(_13).deposit() with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
            idx = 1
            s = 0
            s = 0
            t = 0
            t = _13
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _385 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _405 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_405)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_405), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_405), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _405
                t = _385
                t = _405
                u = ext_call.return_data[0]
                continue 
    else:
        require arg2 == msg.value
        require stor2[mem[140 len 20]]
        if msg.value <= 0:
            idx = 1
            s = 0
            s = 0
            t = 0
            t = mem[128]
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _392 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _409 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_409)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_409), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_409), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _409
                t = _392
                t = _409
                u = ext_call.return_data[0]
                continue 
        else:
            mem[(32 * arg1.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_13))
            call address(_13).deposit() with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
            idx = 1
            s = 0
            s = 0
            t = 0
            t = _13
            u = arg2
            while idx < arg1.length:
                require idx < arg1.length
                _399 = mem[(32 * idx) + 128]
                require idx + 1 < arg1.length
                _413 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(t) != mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(address(t))
                    call address(t).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    if ext_call.return_data[0] < u:
                        require ext_code.size(address(t))
                        call address(t).0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        require ext_code.size(address(t))
                        if ext_call.return_data[0]:
                            call address(t).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), 0
                            require ext_call.success
                            require ext_call.return_data[0]
                        call address(t).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), u
                        require ext_call.success
                        require ext_call.return_data[0]
                mem[(32 * arg1.length) + 132] = address(t)
                mem[(32 * arg1.length) + 164] = address(_413)
                mem[(32 * arg1.length) + 196] = u
                if idx == arg1.length - 2:
                    mem[(32 * arg1.length) + 228] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_413), u, arg3
                else:
                    mem[(32 * arg1.length) + 228] = 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining - 710 wei
                        args address(t), address(_413), u, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 2
                s = ext_call.return_data[0]
                s = _413
                t = _399
                t = _413
                u = ext_call.return_data[0]
                continue 
    require ext_code.size(address(s))
    if stor2[address(s)]:
        call address(s).withdrawTo(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg4), u
        require ext_call.success
        return u
    call address(s).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg4), u
    require ext_call.success
    require ext_call.return_data[0]
    return u
}



}

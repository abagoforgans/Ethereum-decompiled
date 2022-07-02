contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    return code.data[151 len 3503]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function execute(address[] arg1, bytes arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = msg.value
    mem[(32 * arg1.length) + ceil32(arg2.length) + 192] = 64
    mem[(32 * arg1.length) + ceil32(arg2.length) + 224] = calldata.size
    mem[(32 * arg1.length) + ceil32(arg2.length) + 256 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender == this.address:
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _165 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + ceil32(arg2.length) + 192] = 0
            mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            require ext_code.size(address(_165))
            call address(_165).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require idx < arg1.length
            _189 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
            require ext_code.size(address(_189))
            call address(_189).0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args msg.sender, this.address
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require idx < arg1.length
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                _266 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                require ext_code.size(address(_266))
                call address(_266).0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
            else:
                _270 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                require ext_code.size(address(_270))
                call address(_270).0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg2.length:
            call mem[(32 * arg1.length) + idx + 160 len 20].mem[(32 * arg1.length) + idx + 212 len 4] with:
                 gas gas_remaining - 5000 wei
                args mem[(32 * arg1.length) + idx + 216 len mem[(32 * arg1.length) + idx + 180] - 4]
            require ext_call.success
            s = (32 * arg1.length) + idx + 212
            s = mem[(32 * arg1.length) + idx + 180]
            s = mem[(32 * arg1.length) + idx + 160 len 20]
            idx = idx + mem[(32 * arg1.length) + idx + 180] + 52
            continue 
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _356 = mem[(32 * idx) + 128]
            require idx < arg1.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(this.address)
            require ext_call.success
            mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = ext_call.return_data[0]
            require ext_code.size(address(_356))
            call address(_356).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if msg.sender == owner:
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _161 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 192] = 0
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                require ext_code.size(address(_161))
                call address(_161).0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require idx < arg1.length
                _185 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                require ext_code.size(address(_185))
                call address(_185).0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require idx < arg1.length
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    _258 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(_258))
                    call address(_258).0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                else:
                    _262 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(_262))
                    call address(_262).0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                call mem[(32 * arg1.length) + idx + 160 len 20].mem[(32 * arg1.length) + idx + 212 len 4] with:
                     gas gas_remaining - 5000 wei
                    args mem[(32 * arg1.length) + idx + 216 len mem[(32 * arg1.length) + idx + 180] - 4]
                require ext_call.success
                s = (32 * arg1.length) + idx + 212
                s = mem[(32 * arg1.length) + idx + 180]
                s = mem[(32 * arg1.length) + idx + 160 len 20]
                idx = idx + mem[(32 * arg1.length) + idx + 180] + 52
                continue 
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _354 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args address(this.address)
                require ext_call.success
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = ext_call.return_data[0]
                require ext_code.size(address(_354))
                call address(_354).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            require authorityAddress
            mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
            mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = call.func_hash
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _157 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 192] = 0
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                require ext_code.size(address(_157))
                call address(_157).0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require idx < arg1.length
                _181 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                require ext_code.size(address(_181))
                call address(_181).0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require idx < arg1.length
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    _250 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(_250))
                    call address(_250).0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                else:
                    _254 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(_254))
                    call address(_254).0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                call mem[(32 * arg1.length) + idx + 160 len 20].mem[(32 * arg1.length) + idx + 212 len 4] with:
                     gas gas_remaining - 5000 wei
                    args mem[(32 * arg1.length) + idx + 216 len mem[(32 * arg1.length) + idx + 180] - 4]
                require ext_call.success
                s = (32 * arg1.length) + idx + 212
                s = mem[(32 * arg1.length) + idx + 180]
                s = mem[(32 * arg1.length) + idx + 160 len 20]
                idx = idx + mem[(32 * arg1.length) + idx + 180] + 52
                continue 
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _352 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args address(this.address)
                require ext_call.success
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = ext_call.return_data[0]
                require ext_code.size(address(_352))
                call address(_352).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
}



}

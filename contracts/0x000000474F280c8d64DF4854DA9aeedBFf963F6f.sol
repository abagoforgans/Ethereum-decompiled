contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 4994]




// =====================  Runtime code  =====================


#
#  - sub_00000006(?)
#
function _fallback() payable {
    revert
}

function sub_00000043(?) {
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
         gas gas_remaining - 710 wei
        args 0xbda109309f9fafa6dd6a9cb9f1df4085b27ee8ef
    require ext_call.success
    require ext_code.size(0x79f6d0f646706e1261acf0b93dcb864f357d4680)
    call 0x79f6d0f646706e1261acf0b93dcb864f357d4680.0x70a08231 with:
         gas gas_remaining - 710 wei
        args 0xbda109309f9fafa6dd6a9cb9f1df4085b27ee8ef
    require ext_call.success
    require ext_call.return_data[0] > ext_call.return_data[0] + 10^18
    if Mask(1, 4, arg1) > 0:
        if tx.origin != 0x67d1f31eeef182cfb40c0719a8c0000fa7ddcaa9:
            require 0xcc3e1e9703ca6e5e0ae297f364de049fcbf6c98c == tx.origin
    if Mask(1, 1, arg1) > 0:
        require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
        call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.ask(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args 10^18
        require ext_call.success
        require ext_call.return_data[0] + 1
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
        call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.join(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (((10^18 * ext_call.return_data[0]) - 10^18 / ext_call.return_data[0] + 1) - 1)
        require ext_call.success
    require ext_code.size(0xf53ad2c6851052a81b42133467480961b2321c09)
    call 0xf53ad2c6851052a81b42133467480961b2321c09.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 10^16:
        require ext_code.size(0xbda109309f9fafa6dd6a9cb9f1df4085b27ee8ef)
        call 0xbda109309f9fafa6dd6a9cb9f1df4085b27ee8ef.bid(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            require ext_code.size(0xbda109309f9fafa6dd6a9cb9f1df4085b27ee8ef)
            call 0xbda109309f9fafa6dd6a9cb9f1df4085b27ee8ef.boom(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            require ext_call.success
            if arg1 > 0:
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                call 0x39755357759ce0d7f32dc8dc45414cca409ae24e.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining - 710 wei
                    args 0, 589693785, ext_call.return_data[0] - 1, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 1
                require ext_call.success
            if Mask(1, 3, arg1) > 0:
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
                call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.exit(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args 0
                require ext_call.success
        else:
            require ext_call.return_data[0] - 1
            require ext_code.size(0xbda109309f9fafa6dd6a9cb9f1df4085b27ee8ef)
            call 0xbda109309f9fafa6dd6a9cb9f1df4085b27ee8ef.boom(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args ((-ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] - 1) - 1)
            require ext_call.success
            if arg1 > 0:
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                call 0x39755357759ce0d7f32dc8dc45414cca409ae24e.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining - 710 wei
                    args 0, 589693785, -1000000000000000001, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 1
                require ext_call.success
            if Mask(1, 3, arg1) > 0:
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
                call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.exit(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (ext_call.return_data[0] + -(-ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] - 1) + 1)
                require ext_call.success
}

function sub_815a7e0b(?) {
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
    call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.tag() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
    call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.ink(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
        call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.vox() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).par() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
        call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.tab(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
            call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.mat() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    require not 0 / ext_call.return_data[0]
        else:
            if ext_call.return_data[0]:
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
                call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.mat() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[0]:
                    if ext_call.return_data[0]:
                        require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 >= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]
                        if ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                            return (0 / ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
    else:
        if ext_call.return_data[0]:
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
            call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.vox() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).par() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
            call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.tab(bytes32 arg1) with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            if not ext_call.return_data[0]:
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
                call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.mat() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[0]:
                    if ext_call.return_data[0]:
                        require not 0 / ext_call.return_data[0]
            else:
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                    require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
                    call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.mat() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 >= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]
                            if ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                                return (10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
    revert
}

function sub_c9a5b884(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = arg1.length
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _203 = mem[(32 * idx) + 128]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
        call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.tag() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
        call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.ink(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args mem[(32 * idx) + 128]
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
            call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.vox() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).par() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
            call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.tab(bytes32 arg1) with:
                 gas gas_remaining - 710 wei
                args mem[(32 * idx) + 128]
            require ext_call.success
            if not ext_call.return_data[0]:
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
                call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.mat() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0]
                require ext_call.return_data[0]
                require 0 / ext_call.return_data[0]
                revert
            require ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
            mem[(64 * arg1.length) + 224] = 0
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
            call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.mat() with:
                 gas gas_remaining - 710 wei
            mem[(64 * arg1.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_call.return_data[0]
            require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 >= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]
            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require idx < mem[(32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * idx) + 192] = 0 / ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            s = ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            s = (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            s = 0
            s = _203
            idx = idx + 1
            continue 
        require ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
        call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.vox() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).par() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
        call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.tab(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args mem[(32 * idx) + 128]
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
            call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.mat() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0]
            require ext_call.return_data[0]
            require 0 / ext_call.return_data[0]
            revert
        require ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
        mem[(64 * arg1.length) + 224] = 0
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59a)
        call 0x00448a5065aebb8e423f0896e6c5d525c040f59a.mat() with:
             gas gas_remaining - 710 wei
        mem[(64 * arg1.length) + 192] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require ext_call.return_data[0]
        require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 >= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        require idx < mem[(32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * idx) + 192] = 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        s = ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        s = (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        s = (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        s = _203
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 192] = 32
    mem[(64 * arg1.length) + 224] = mem[(32 * arg1.length) + 160]
    mem[(64 * arg1.length) + 256 len floor32(mem[(32 * arg1.length) + 160])] = mem[(32 * arg1.length) + 192 len floor32(mem[(32 * arg1.length) + 160])]
    return 32, mem[(64 * arg1.length) + 224 len (32 * mem[(32 * arg1.length) + 160]) + 32]
}



}

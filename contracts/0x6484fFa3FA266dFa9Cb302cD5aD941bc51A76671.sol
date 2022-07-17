contract main {




// =====================  Runtime code  =====================


const uniswap = 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95

const kyber = 0x818e6fecd516ecc3849daf6845e3ec868087b755

const ETHER = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


function _fallback() payable {
    revert
}

function allTokens() payable {
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[2326 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 132] = idx
        require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
        staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getTokenWithId(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ext_call.return_data[0]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * ext_call.return_data[0]) + 128] = 32
    mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    s = 0
    while ext_call.return_data[0] < 32 * ext_call.return_data[0]:
        mem[(34 * ext_call.return_data[0]) + 192] = mem[ext_call.return_data[0] + 128]
        s = ext_call.return_data[0] + 32
        continue 
    return memory
      from (32 * ext_call.return_data[0]) + 128
       len (96 * ext_call.return_data[0]) + 64
}

function best() payable {
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[(32 * ext_call.return_data[0]) + 132] = idx
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getTokenWithId(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ext_call.return_data[0]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                idx = 0
                while idx < ext_call.return_data[0]:
                    require idx < ext_call.return_data[0]
                    _949 = mem[(32 * idx) + 128]
                    mem[(3 * 32 * ext_call.return_data[0]) + 228] = mem[(32 * idx) + 140 len 20]
                    mem[(3 * 32 * ext_call.return_data[0]) + 260] = 0
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_949), 0
                    mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(_949))
                    staticcall address(_949).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                            gas gas_remaining wei
                           args address(_949)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18)
                    mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                    require idx < ext_call.return_data[0]
                    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(3 * 32 * ext_call.return_data[0]) + 196] = mem[(32 * idx) + 140 len 20]
                    mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[(3 * 32 * ext_call.return_data[0]) + 196], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
                    mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    if ext_call.return_data[0] < 0:
                        require idx < mem[(32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = 0
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    if ext_call.return_data[0] < 0:
                        require idx < mem[(64 * ext_call.return_data[0]) + 160]
                        mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = 0
                    idx = idx + 1
                    continue 
                mem[(3 * 32 * ext_call.return_data[0]) + 288] = 0
                mem[(3 * 32 * ext_call.return_data[0]) + 192] = 128
                mem[(3 * 32 * ext_call.return_data[0]) + 320] = ext_call.return_data[0]
                mem[(3 * 32 * ext_call.return_data[0]) + 352 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
                mem[(3 * 32 * ext_call.return_data[0]) + 224] = (32 * ext_call.return_data[0]) + 160
                mem[(128 * ext_call.return_data[0]) + 352] = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(128 * ext_call.return_data[0]) + 384 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[(3 * 32 * ext_call.return_data[0]) + 256] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
                mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 384] = mem[(64 * ext_call.return_data[0]) + 160]
                _1435 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                return memory
                  from (3 * 32 * ext_call.return_data[0]) + 192
                   len (32 * _1435) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
            mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[2326 len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                require idx < ext_call.return_data[0]
                _953 = mem[(32 * idx) + 128]
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = mem[(32 * idx) + 140 len 20]
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = 0
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_953), 0
                mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_953))
                staticcall address(_953).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(_953)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18)
                mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                require idx < ext_call.return_data[0]
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 196] = mem[(32 * idx) + 140 len 20]
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args mem[(3 * 32 * ext_call.return_data[0]) + 196], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
                mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                if ext_call.return_data[0] < 0:
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = 0
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                if ext_call.return_data[0] < 0:
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = 0
                idx = idx + 1
                continue 
            mem[(3 * 32 * ext_call.return_data[0]) + 288] = 0
            mem[(3 * 32 * ext_call.return_data[0]) + 192] = 128
            mem[(3 * 32 * ext_call.return_data[0]) + 320] = ext_call.return_data[0]
            mem[(3 * 32 * ext_call.return_data[0]) + 352 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
            mem[(3 * 32 * ext_call.return_data[0]) + 224] = (32 * ext_call.return_data[0]) + 160
            mem[(128 * ext_call.return_data[0]) + 352] = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(128 * ext_call.return_data[0]) + 384 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[(3 * 32 * ext_call.return_data[0]) + 256] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
            mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 384] = mem[(64 * ext_call.return_data[0]) + 160]
            _1438 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            return 128, 
                   (32 * ext_call.return_data[0]) + 160,
                   mem[(3 * 32 * ext_call.return_data[0]) + 256],
                   0,
                   ext_call.return_data[0],
                   mem[(3 * 32 * ext_call.return_data[0]) + 352 len (32 * ext_call.return_data[0]) + (32 * _1438) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + 64]
        mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[2326 len 32 * ext_call.return_data[0]]
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                require idx < ext_call.return_data[0]
                _957 = mem[(32 * idx) + 128]
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = mem[(32 * idx) + 140 len 20]
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = 0
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_957), 0
                mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_957))
                staticcall address(_957).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(_957)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18)
                mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                require idx < ext_call.return_data[0]
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 196] = mem[(32 * idx) + 140 len 20]
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args mem[(3 * 32 * ext_call.return_data[0]) + 196], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
                mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                if ext_call.return_data[0] < 0:
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = 0
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                if ext_call.return_data[0] < 0:
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = 0
                idx = idx + 1
                continue 
            mem[(3 * 32 * ext_call.return_data[0]) + 288] = 0
            mem[(3 * 32 * ext_call.return_data[0]) + 192] = 128
            mem[(3 * 32 * ext_call.return_data[0]) + 320] = ext_call.return_data[0]
            mem[(3 * 32 * ext_call.return_data[0]) + 352 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
            mem[(3 * 32 * ext_call.return_data[0]) + 224] = (32 * ext_call.return_data[0]) + 160
            mem[(128 * ext_call.return_data[0]) + 352] = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(128 * ext_call.return_data[0]) + 384 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[(3 * 32 * ext_call.return_data[0]) + 256] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
            mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 384] = mem[(64 * ext_call.return_data[0]) + 160]
            _1441 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            return memory
              from (3 * 32 * ext_call.return_data[0]) + 192
               len (32 * _1441) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
        mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[2326 len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < ext_call.return_data[0]
            _961 = mem[(32 * idx) + 128]
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = mem[(32 * idx) + 140 len 20]
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = 0
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_961), 0
            mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(_961))
            staticcall address(_961).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(_961)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18)
            mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            require idx < ext_call.return_data[0]
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 196] = mem[(32 * idx) + 140 len 20]
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args mem[(3 * 32 * ext_call.return_data[0]) + 196], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            if ext_call.return_data[0] < 0:
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = 0
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            if ext_call.return_data[0] < 0:
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = 0
            idx = idx + 1
            continue 
        mem[(3 * 32 * ext_call.return_data[0]) + 288] = 0
        mem[(3 * 32 * ext_call.return_data[0]) + 192] = 128
        mem[(3 * 32 * ext_call.return_data[0]) + 320] = ext_call.return_data[0]
        mem[(3 * 32 * ext_call.return_data[0]) + 352 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
        mem[(3 * 32 * ext_call.return_data[0]) + 224] = (32 * ext_call.return_data[0]) + 160
        mem[(128 * ext_call.return_data[0]) + 352] = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(128 * ext_call.return_data[0]) + 384 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[(3 * 32 * ext_call.return_data[0]) + 256] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 384] = mem[(64 * ext_call.return_data[0]) + 160]
        _1444 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        return memory
          from (3 * 32 * ext_call.return_data[0]) + 192
           len (32 * _1444) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
    mem[128 len 32 * ext_call.return_data[0]] = code.data[2326 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 132] = idx
        require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
        staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getTokenWithId(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ext_call.return_data[0]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                require idx < ext_call.return_data[0]
                _965 = mem[(32 * idx) + 128]
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = mem[(32 * idx) + 140 len 20]
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = 0
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_965), 0
                mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(_965))
                staticcall address(_965).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(_965)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18)
                mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                require idx < ext_call.return_data[0]
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 196] = mem[(32 * idx) + 140 len 20]
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args mem[(3 * 32 * ext_call.return_data[0]) + 196], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
                mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                if ext_call.return_data[0] < 0:
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = 0
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                if ext_call.return_data[0] < 0:
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = 0
                idx = idx + 1
                continue 
            mem[(3 * 32 * ext_call.return_data[0]) + 288] = 0
            mem[(3 * 32 * ext_call.return_data[0]) + 192] = 128
            mem[(3 * 32 * ext_call.return_data[0]) + 320] = ext_call.return_data[0]
            mem[(3 * 32 * ext_call.return_data[0]) + 352 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
            mem[(3 * 32 * ext_call.return_data[0]) + 224] = (32 * ext_call.return_data[0]) + 160
            mem[(128 * ext_call.return_data[0]) + 352] = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(128 * ext_call.return_data[0]) + 384 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[(3 * 32 * ext_call.return_data[0]) + 256] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
            mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 384] = mem[(64 * ext_call.return_data[0]) + 160]
            _1447 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            return memory
              from (3 * 32 * ext_call.return_data[0]) + 192
               len (32 * _1447) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
        mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[2326 len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < ext_call.return_data[0]
            _969 = mem[(32 * idx) + 128]
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = mem[(32 * idx) + 140 len 20]
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = 0
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_969), 0
            mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(_969))
            staticcall address(_969).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(_969)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18)
            mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            require idx < ext_call.return_data[0]
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 196] = mem[(32 * idx) + 140 len 20]
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args mem[(3 * 32 * ext_call.return_data[0]) + 196], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            if ext_call.return_data[0] < 0:
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = 0
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            if ext_call.return_data[0] < 0:
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = 0
            idx = idx + 1
            continue 
        mem[(3 * 32 * ext_call.return_data[0]) + 288] = 0
        mem[(3 * 32 * ext_call.return_data[0]) + 192] = 128
        mem[(3 * 32 * ext_call.return_data[0]) + 320] = ext_call.return_data[0]
        mem[(3 * 32 * ext_call.return_data[0]) + 352 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
        mem[(3 * 32 * ext_call.return_data[0]) + 224] = (32 * ext_call.return_data[0]) + 160
        mem[(128 * ext_call.return_data[0]) + 352] = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(128 * ext_call.return_data[0]) + 384 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[(3 * 32 * ext_call.return_data[0]) + 256] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 384] = mem[(64 * ext_call.return_data[0]) + 160]
        _1450 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        return memory
          from (3 * 32 * ext_call.return_data[0]) + 192
           len (32 * _1450) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[2326 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < ext_call.return_data[0]
            _973 = mem[(32 * idx) + 128]
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = mem[(32 * idx) + 140 len 20]
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = 0
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_973), 0
            mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(_973))
            staticcall address(_973).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(_973)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18)
            mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            require idx < ext_call.return_data[0]
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 196] = mem[(32 * idx) + 140 len 20]
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args mem[(3 * 32 * ext_call.return_data[0]) + 196], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            if ext_call.return_data[0] < 0:
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = 0
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            if ext_call.return_data[0] < 0:
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = 0
            idx = idx + 1
            continue 
        mem[(3 * 32 * ext_call.return_data[0]) + 288] = 0
        mem[(3 * 32 * ext_call.return_data[0]) + 192] = 128
        mem[(3 * 32 * ext_call.return_data[0]) + 320] = ext_call.return_data[0]
        mem[(3 * 32 * ext_call.return_data[0]) + 352 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
        mem[(3 * 32 * ext_call.return_data[0]) + 224] = (32 * ext_call.return_data[0]) + 160
        mem[(128 * ext_call.return_data[0]) + 352] = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(128 * ext_call.return_data[0]) + 384 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[(3 * 32 * ext_call.return_data[0]) + 256] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 384] = mem[(64 * ext_call.return_data[0]) + 160]
        _1453 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        return 128, 
               (32 * ext_call.return_data[0]) + 160,
               mem[(3 * 32 * ext_call.return_data[0]) + 256],
               0,
               ext_call.return_data[0],
               mem[(3 * 32 * ext_call.return_data[0]) + 352 len (32 * ext_call.return_data[0]) + (32 * _1453) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + 64]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[2326 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require idx < ext_call.return_data[0]
        _977 = mem[(32 * idx) + 128]
        mem[(3 * 32 * ext_call.return_data[0]) + 228] = mem[(32 * idx) + 140 len 20]
        mem[(3 * 32 * ext_call.return_data[0]) + 260] = 0
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(_977), 0
        mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(_977))
        staticcall address(_977).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
        staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                gas gas_remaining wei
               args address(_977)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18)
        mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        require idx < ext_call.return_data[0]
        require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
        staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(3 * 32 * ext_call.return_data[0]) + 196] = mem[(32 * idx) + 140 len 20]
        mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args mem[(3 * 32 * ext_call.return_data[0]) + 196], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
        mem[(3 * 32 * ext_call.return_data[0]) + 192 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        if ext_call.return_data[0] < 0:
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = 0
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        if ext_call.return_data[0] < 0:
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = 0
        idx = idx + 1
        continue 
    mem[(3 * 32 * ext_call.return_data[0]) + 288] = 0
    mem[(3 * 32 * ext_call.return_data[0]) + 192] = 128
    mem[(3 * 32 * ext_call.return_data[0]) + 320] = ext_call.return_data[0]
    mem[(3 * 32 * ext_call.return_data[0]) + 352 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    mem[(3 * 32 * ext_call.return_data[0]) + 224] = (32 * ext_call.return_data[0]) + 160
    mem[(128 * ext_call.return_data[0]) + 352] = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(128 * ext_call.return_data[0]) + 384 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[(3 * 32 * ext_call.return_data[0]) + 256] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
    mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 384] = mem[(64 * ext_call.return_data[0]) + 160]
    _1456 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    return 128, 
           (32 * ext_call.return_data[0]) + 160,
           mem[(3 * 32 * ext_call.return_data[0]) + 256],
           0,
           ext_call.return_data[0],
           mem[(3 * 32 * ext_call.return_data[0]) + 352 len (32 * ext_call.return_data[0]) + (32 * _1456) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + 64]
}



}

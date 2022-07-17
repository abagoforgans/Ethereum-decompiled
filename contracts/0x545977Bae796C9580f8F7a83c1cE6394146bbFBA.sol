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
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchangeCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[2616 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 132] = idx
        require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
        staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenList(uint256 arg1) with:
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
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchangeCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[(32 * ext_call.return_data[0]) + 132] = idx
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenList(uint256 arg1) with:
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
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * idx) + 128]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                    mem[(3 * 32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
                    mem[(3 * 32 * ext_call.return_data[0]) + 260] = eth.balance(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18, ext_call.return_data[0], eth.balance(ext_call.return_data[0])
                    mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                    require idx < ext_call.return_data[0]
                    _1346 = mem[(32 * idx) + 128]
                    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, eth.balance(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(_1346), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
                _1627 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                return 128, 
                       (32 * ext_call.return_data[0]) + 160,
                       mem[(3 * 32 * ext_call.return_data[0]) + 256],
                       0,
                       ext_call.return_data[0],
                       mem[(3 * 32 * ext_call.return_data[0]) + 352 len (32 * ext_call.return_data[0]) + (32 * _1627) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + 64]
            mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[2616 len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                require idx < ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * idx) + 128]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = eth.balance(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18, ext_call.return_data[0], eth.balance(ext_call.return_data[0])
                mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                require idx < ext_call.return_data[0]
                _1347 = mem[(32 * idx) + 128]
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, eth.balance(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(_1347), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
            _1630 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            return memory
              from (3 * 32 * ext_call.return_data[0]) + 192
               len (32 * _1630) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
        mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[2616 len 32 * ext_call.return_data[0]]
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                require idx < ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * idx) + 128]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = eth.balance(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18, ext_call.return_data[0], eth.balance(ext_call.return_data[0])
                mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                require idx < ext_call.return_data[0]
                _1348 = mem[(32 * idx) + 128]
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, eth.balance(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(_1348), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
            _1633 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            return 128, 
                   (32 * ext_call.return_data[0]) + 160,
                   mem[(3 * 32 * ext_call.return_data[0]) + 256],
                   0,
                   ext_call.return_data[0],
                   mem[(3 * 32 * ext_call.return_data[0]) + 352 len (32 * ext_call.return_data[0]) + (32 * _1633) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + 64]
        mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[2616 len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * idx) + 128]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = eth.balance(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18, ext_call.return_data[0], eth.balance(ext_call.return_data[0])
            mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            require idx < ext_call.return_data[0]
            _1349 = mem[(32 * idx) + 128]
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, eth.balance(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_1349), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
        _1636 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        return memory
          from (3 * 32 * ext_call.return_data[0]) + 192
           len (32 * _1636) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
    mem[128 len 32 * ext_call.return_data[0]] = code.data[2616 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 132] = idx
        require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
        staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenList(uint256 arg1) with:
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
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * idx) + 128]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = eth.balance(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18, ext_call.return_data[0], eth.balance(ext_call.return_data[0])
                mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                require idx < ext_call.return_data[0]
                _1350 = mem[(32 * idx) + 128]
                require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
                staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, eth.balance(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(_1350), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
            _1639 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            return memory
              from (3 * 32 * ext_call.return_data[0]) + 192
               len (32 * _1639) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
        mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[2616 len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * idx) + 128]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = eth.balance(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18, ext_call.return_data[0], eth.balance(ext_call.return_data[0])
            mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            require idx < ext_call.return_data[0]
            _1351 = mem[(32 * idx) + 128]
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, eth.balance(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_1351), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
        _1642 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        return memory
          from (3 * 32 * ext_call.return_data[0]) + 192
           len (32 * _1642) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[2616 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * idx) + 128]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = eth.balance(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18, ext_call.return_data[0], eth.balance(ext_call.return_data[0])
            mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            require idx < ext_call.return_data[0]
            _1352 = mem[(32 * idx) + 128]
            require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
            staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, eth.balance(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_1352), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
        _1645 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        return 128, 
               (32 * ext_call.return_data[0]) + 160,
               mem[(3 * 32 * ext_call.return_data[0]) + 256],
               0,
               ext_call.return_data[0],
               mem[(3 * 32 * ext_call.return_data[0]) + 352 len (32 * ext_call.return_data[0]) + (32 * _1645) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + 64]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[2616 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require idx < ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[(32 * idx) + 128]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
        staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(3 * 32 * ext_call.return_data[0]) + 196] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
        mem[(3 * 32 * ext_call.return_data[0]) + 228] = ext_call.return_data[0]
        mem[(3 * 32 * ext_call.return_data[0]) + 260] = eth.balance(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18, ext_call.return_data[0], eth.balance(ext_call.return_data[0])
        mem[(3 * 32 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        require idx < ext_call.return_data[0]
        _1353 = mem[(32 * idx) + 128]
        require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
        staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenToExchangeLookup(address arg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, eth.balance(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(3 * 32 * ext_call.return_data[0]) + 228] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(3 * 32 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(_1353), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
    _1648 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (128 * ext_call.return_data[0]) + 416 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    return memory
      from (3 * 32 * ext_call.return_data[0]) + 192
       len (32 * _1648) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
}



}

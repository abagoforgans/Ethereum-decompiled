contract main {




// =====================  Runtime code  =====================


#
#  - sub_d651620e(?)
#
const uniswap = 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95

const kyber = 0x818e6fecd516ecc3849daf6845e3ec868087b755

const ETHER = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


function _fallback() payable {
    require msg.value > 0
}

function allTokens() {
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.tokenCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[2604 len 32 * ext_call.return_data[0]]
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



}

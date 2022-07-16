contract main {




// =====================  Runtime code  =====================


const getAddressKyber = 0x818e6fecd516ecc3849daf6845e3ec868087b755

const getAddressETH = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const getOracleAddress = 0x729d19f657bd0614b4985cf1d82531c67569197b

const getAddressDAI = 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359

const getSaiTubAddress = 0x448a5065aebb8e423f0896e6c5d525c040f59af3


function _fallback() payable {
    revert
}

function sub_546a90d3(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x729d19f657bd0614b4985cf1d82531c67569197b)
    staticcall 0x729d19f657bd0614b4985cf1d82531c67569197b.read() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.cups(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
        revert with 0, 'math-not-safe'
    require ext_call.return_data[0]
    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
        revert with 0, 'math-not-safe'
    if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[32] * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if not ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    require ext_call.return_data[0]
    if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'math-not-safe'
    if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 < (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10 * 10^18 / 10^18 != (((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10:
        revert with 0, 'math-not-safe'
    if ext_call.return_data[64] / 2 < 0:
        revert with 0, 'math-not-safe'
    require ext_call.return_data[64]
    if (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) - 10 * 10^18 / ext_call.return_data[64] <= 15 * 10^17:
        revert with 0, 'No-margin-to-leverage'
    if 15 * 10^17 * ext_call.return_data[64] / 15 * 10^17 != ext_call.return_data[64]:
        revert with 0, 'math-not-safe'
    if (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 < 15 * 10^17 * ext_call.return_data[64]:
        revert with 0, 'math-not-safe'
    if -((15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) - 20 > -10:
        revert with 0, 'ds-math-sub-underflow'
    if (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) - 20 * 10^18 / 10^18 != (((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + -((15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) - 20:
        revert with 0, 'math-not-safe'
    if ext_call.return_data[0] / 2 < 0:
        revert with 0, 'math-not-safe'
    require ext_call.return_data[0]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]) > (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'ds-math-sub-underflow'
        if ext_call.return_data[64] > ext_call.return_data[64]:
            revert with 0, 'ds-math-sub-underflow'
        if not ext_call.return_data[0]:
            return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
                   ext_call.return_data[64],
                   0
        require ext_call.return_data[0]
        if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]):
            revert with 0, 'math-not-safe'
        return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
               ext_call.return_data[64],
               ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + (-1 * (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
    require ext_call.return_data[0]
    if (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 < (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]) > (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'ds-math-sub-underflow'
    if ext_call.return_data[64] - (((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) > ext_call.return_data[64]:
        revert with 0, 'ds-math-sub-underflow'
    if not ext_call.return_data[0]:
        return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
               ext_call.return_data[64] - (((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
               0
    require ext_call.return_data[0]
    if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]):
        revert with 0, 'math-not-safe'
    return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
           ext_call.return_data[64] - (((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18),
           ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + (-1 * (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
}



}

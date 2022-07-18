contract main {




// =====================  Runtime code  =====================


#
#  - save(uint256 arg1, uint256 arg2)
#
const getAddressKyber = 0x818e6fecd516ecc3849daf6845e3ec868087b755

const getUniswapMKRExchange = 0x2c4bd064b998838076fa341a83d007fc2fa50957

const getAddressETH = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const getAddressAdmin = 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638

const getOracleAddress = 0x729d19f657bd0614b4985cf1d82531c67569197b

const getAddressDAI = 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359

const getUniswapDAIExchange = 0x9cabec1ead1c0ba254b09efb3ee13841712be14

const getSaiTubAddress = 0x448a5065aebb8e423f0896e6c5d525c040f59af3


uint256 version;

function version() {
    return version
}

function _fallback() payable {
  stop
}

function sub_73435d12(?) {
    require calldata.size - 4 >= 32
    return arg1
}

function getExpectedRate(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], 99 * ext_call.return_data[0] / 100
}

function getLeverage(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
    if -ext_call.return_data[64] > 0:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    if arg2 >= ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) + -ext_call.return_data[64] - 10:
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
                gas gas_remaining wei
               args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) + -ext_call.return_data[64] - 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if 9975 * 10^16 * ext_call.return_data[0] / 9975 * 10^16 != ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 < 9975 * 10^16 * ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 != (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
            revert with 0, 'math-not-safe'
        if (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 < 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
            revert with 0, 'math-not-safe'
        if not (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
            if not (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                return 0
            if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 < (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'math-not-safe'
            if not ext_call.return_data[0]:
                return (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, 
                       ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) - 10,
                       0,
                       1
            require ext_call.return_data[0]
            if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'math-not-safe'
            if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 < (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            return (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, 
                   ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) - 10,
                   ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
                   1
        require (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18
        if (-10 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) - (ext_call.return_data[64] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) / (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 != ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) + -ext_call.return_data[64] - 10:
            revert with 0, 'math-not-safe'
        if not (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            return 0
        if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((-10 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (-1 * ext_call.return_data[64] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18) < (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        if not ext_call.return_data[0]:
            return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((-10 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (-1 * ext_call.return_data[64] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18), 
                   ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) - 10,
                   0,
                   1
        require ext_call.return_data[0]
        if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + ((-10 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (-1 * ext_call.return_data[64] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((-10 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (-1 * ext_call.return_data[64] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18):
            revert with 0, 'math-not-safe'
        return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((-10 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (-1 * ext_call.return_data[64] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18), 
               ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) - 10,
               ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + ((-10 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (-1 * ext_call.return_data[64] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
               1
    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
            gas gas_remaining wei
           args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 9975 * 10^16 * ext_call.return_data[0] / 9975 * 10^16 != ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 < 9975 * 10^16 * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 != (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
        revert with 0, 'math-not-safe'
    if (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 < 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
        revert with 0, 'math-not-safe'
    if not (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
        if not (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            return 0
        if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 < (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        if not ext_call.return_data[0]:
            return (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, 
                   ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) - 10,
                   0,
                   1
        require ext_call.return_data[0]
        if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 < (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        return (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, 
               ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) - 10,
               ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
               1
    require (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18
    if arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 / (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 != arg2:
        revert with 0, 'math-not-safe'
    if (arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 < arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
        revert with 0, 'math-not-safe'
    if not (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        return 0
    if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18) < (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'math-not-safe'
    if not ext_call.return_data[0]:
        return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18), 
               ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) - 10,
               0,
               1
    require ext_call.return_data[0]
    if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18):
        revert with 0, 'math-not-safe'
    return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18), 
           ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) - 10,
           ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
           1
}

function leverage(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
            if 0 / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
        revert with 0, 'ds-math-sub-underflow'
    require ext_call.return_data[0]
    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
        revert with 0, 'math-not-safe'
    if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[32] * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if not ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    require ext_call.return_data[0]
    if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'math-not-safe'
    if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 < (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if (((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10 > ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
        revert with 0, 'ds-math-sub-underflow'
    if (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10 * 10^18 / 10^18 != (((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 10:
        revert with 0, 'math-not-safe'
    if ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) - 10 > (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17:
        revert with 0, 'ds-math-sub-underflow'
    if -ext_call.return_data[64] > 0:
        revert with 0, 'ds-math-sub-underflow'
    if not ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) + -ext_call.return_data[64] - 10:
        revert with 0, 'No-debt-to-borrow'
    if arg2 >= ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) + -ext_call.return_data[64] - 10:
        if ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) + -ext_call.return_data[64] - 10 > 0:
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) + -ext_call.return_data[64] - 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x2552409d: arg1, ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) - 925 * 10^16 / 15 * 10^17) + -ext_call.return_data[64] - 10, this.address
    else:
        if arg2 > 0:
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x2552409d: arg1, arg2, this.address
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    staticcall 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x818e6fecd516ecc3849daf6845e3ec868087b755
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != -1:
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x818e6fecd516ecc3849daf6845e3ec868087b755, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32 len 96], 0, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 9975 * 10^16 * ext_call.return_data[0] / 9975 * 10^16 != ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 < 9975 * 10^16 * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 != (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
        revert with 0, 'math-not-safe'
    if (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 < 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
        revert with 0, 'math-not-safe'
    if ext_call.return_data[0] - ((10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    call 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638 with:
       value ext_call.return_data[0] - ((10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 > 0:
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
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
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'cup-not-owned'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit() with:
           value (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 / 1000000000 * 10^18 != (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
            revert with 0, 'math-not-safe'
        if (1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != -1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            if 0 <= (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != -1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, (1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xa66947e0: arg1, (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18, (1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], this.address
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != -1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xa66947e0: arg1, (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18, ((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1, this.address
        else:
            require ext_call.return_data[0]
            if (1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < (1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != -1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            if ((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 <= (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != -1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, (1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xa66947e0: arg1, (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18, (1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], this.address
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != -1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xa66947e0: arg1, (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18, ((1000000000 * 10^18 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1, this.address
    emit 0x11e25872: 3, ext_call.return_data[32 len 96], ext_call.return_data[0], address(this.address), 0, 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638
}

function getSave(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
            if 0 / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
        if 15 * 10^17 * ext_call.return_data[64] / 15 * 10^17 != ext_call.return_data[64]:
            revert with 0, 'math-not-safe'
        if (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 < 15 * 10^17 * ext_call.return_data[64]:
            revert with 0, 'math-not-safe'
        if -((15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) - 20 > -10:
            revert with 0, 'ds-math-sub-underflow'
        if (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) - 20 * 10^18 / 10^18 != -((15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) - 20:
            revert with 0, 'math-not-safe'
        if ext_call.return_data[0] / 2 < 0:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        if arg2 >= (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]:
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if 9975 * 10^16 * ext_call.return_data[0] / 9975 * 10^16 != ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 < 9975 * 10^16 * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 != (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 'math-not-safe'
            if (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 < 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 'math-not-safe'
            if not (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
                if 0 >= ext_call.return_data[64]:
                    return 0
                if -(-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] > 0:
                    revert with 0, 'ds-math-sub-underflow'
                if ext_call.return_data[64] > ext_call.return_data[64]:
                    revert with 0, 'ds-math-sub-underflow'
                if not ext_call.return_data[0]:
                    return -(-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0], 
                           ext_call.return_data[64],
                           0,
                           1
                require ext_call.return_data[0]
                if -1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != -(-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]:
                    revert with 0, 'math-not-safe'
                if (-1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 < -1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'math-not-safe'
                return -(-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0], 
                       ext_call.return_data[64],
                       (-1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
                       1
            require (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18
            if (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 / (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 != (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 < (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
                revert with 0, 'math-not-safe'
            if ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18 >= ext_call.return_data[64]:
                return 0
            if -(-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] > 0:
                revert with 0, 'ds-math-sub-underflow'
            if ext_call.return_data[64] - (((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18) > ext_call.return_data[64]:
                revert with 0, 'ds-math-sub-underflow'
            if not ext_call.return_data[0]:
                return -(-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0], 
                       ext_call.return_data[64] - (((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
                       0,
                       1
            require ext_call.return_data[0]
            if -1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != -(-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if (-1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 < -1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            return -(-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0], 
                   ext_call.return_data[64] - (((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
                   (-1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
                   1
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
                gas gas_remaining wei
               args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if 9975 * 10^16 * ext_call.return_data[0] / 9975 * 10^16 != ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 < 9975 * 10^16 * ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 != (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
            revert with 0, 'math-not-safe'
        if (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 < 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
            revert with 0, 'math-not-safe'
        if not (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
            if 0 >= ext_call.return_data[64]:
                return 0
            if -arg2 > 0:
                revert with 0, 'ds-math-sub-underflow'
            if ext_call.return_data[64] > ext_call.return_data[64]:
                revert with 0, 'ds-math-sub-underflow'
            if not ext_call.return_data[0]:
                return -arg2, ext_call.return_data[64], 0, 1
            require ext_call.return_data[0]
            if -1 * arg2 * ext_call.return_data[0] / ext_call.return_data[0] != -arg2:
                revert with 0, 'math-not-safe'
            if (-1 * arg2 * ext_call.return_data[0]) + 5 * 10^17 < -1 * arg2 * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            return -arg2, ext_call.return_data[64], (-1 * arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18, 1
        require (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18
        if arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 / (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 != arg2:
            revert with 0, 'math-not-safe'
        if (arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 < arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
            revert with 0, 'math-not-safe'
        if (arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18 >= ext_call.return_data[64]:
            return 0
        if -arg2 > 0:
            revert with 0, 'ds-math-sub-underflow'
        if ext_call.return_data[64] - ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18) > ext_call.return_data[64]:
            revert with 0, 'ds-math-sub-underflow'
        if not ext_call.return_data[0]:
            return -arg2, 
                   ext_call.return_data[64] - ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
                   0,
                   1
        require ext_call.return_data[0]
        if -1 * arg2 * ext_call.return_data[0] / ext_call.return_data[0] != -arg2:
            revert with 0, 'math-not-safe'
        if (-1 * arg2 * ext_call.return_data[0]) + 5 * 10^17 < -1 * arg2 * ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        return -arg2, 
               ext_call.return_data[64] - ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
               (-1 * arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
               1
    require ext_call.return_data[0]
    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
        revert with 0, 'math-not-safe'
    if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[32] * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if not ext_call.return_data[0]:
        if 15 * 10^17 * ext_call.return_data[64] / 15 * 10^17 != ext_call.return_data[64]:
            revert with 0, 'math-not-safe'
        if (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 < 15 * 10^17 * ext_call.return_data[64]:
            revert with 0, 'math-not-safe'
        if -((15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) - 20 > -10:
            revert with 0, 'ds-math-sub-underflow'
        if (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) - 20 * 10^18 / 10^18 != -((15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) - 20:
            revert with 0, 'math-not-safe'
        if ext_call.return_data[0] / 2 < 0:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        if arg2 >= (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]:
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if 9975 * 10^16 * ext_call.return_data[0] / 9975 * 10^16 != ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 < 9975 * 10^16 * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 != (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 'math-not-safe'
            if (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 < 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 'math-not-safe'
            if not (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
                if 0 >= ext_call.return_data[64]:
                    return 0
                if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]) > (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                    revert with 0, 'ds-math-sub-underflow'
                if ext_call.return_data[64] > ext_call.return_data[64]:
                    revert with 0, 'ds-math-sub-underflow'
                if not ext_call.return_data[0]:
                    return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
                           ext_call.return_data[64],
                           0,
                           1
                require ext_call.return_data[0]
                if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]):
                    revert with 0, 'math-not-safe'
                return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
                       ext_call.return_data[64],
                       ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + (-1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
                       1
            require (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18
            if (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 / (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 != (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 < (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
                revert with 0, 'math-not-safe'
            if ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18 >= ext_call.return_data[64]:
                return 0
            if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]) > (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'ds-math-sub-underflow'
            if ext_call.return_data[64] - (((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18) > ext_call.return_data[64]:
                revert with 0, 'ds-math-sub-underflow'
            if not ext_call.return_data[0]:
                return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
                       ext_call.return_data[64] - (((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
                       0,
                       1
            require ext_call.return_data[0]
            if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]):
                revert with 0, 'math-not-safe'
            return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
                   ext_call.return_data[64] - (((-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
                   ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + (-1 * (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
                   1
    else:
        require ext_call.return_data[0]
        if (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 < (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
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
        if arg2 >= (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]:
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if 9975 * 10^16 * ext_call.return_data[0] / 9975 * 10^16 != ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 < 9975 * 10^16 * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 != (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 'math-not-safe'
            if (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 < 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                revert with 0, 'math-not-safe'
            if not (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
                if 0 >= ext_call.return_data[64]:
                    return 0
                if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]) > (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                    revert with 0, 'ds-math-sub-underflow'
                if ext_call.return_data[64] > ext_call.return_data[64]:
                    revert with 0, 'ds-math-sub-underflow'
                if not ext_call.return_data[0]:
                    return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
                           ext_call.return_data[64],
                           0,
                           1
                require ext_call.return_data[0]
                if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]):
                    revert with 0, 'math-not-safe'
                return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
                       ext_call.return_data[64],
                       ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + (-1 * (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
                       1
            require (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18
            if (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 / (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 != (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 < (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
                revert with 0, 'math-not-safe'
            if ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18 >= ext_call.return_data[64]:
                return 0
            if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]) > (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'ds-math-sub-underflow'
            if ext_call.return_data[64] - (((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18) > ext_call.return_data[64]:
                revert with 0, 'ds-math-sub-underflow'
            if not ext_call.return_data[0]:
                return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
                       ext_call.return_data[64] - (((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
                       0,
                       1
            require ext_call.return_data[0]
            if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]):
                revert with 0, 'math-not-safe'
            return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0]), 
                   ext_call.return_data[64] - (((10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
                   ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + (-1 * (10^18 * ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * 10^18 * (15 * 10^17 * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) - 20 * 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
                   1
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 9975 * 10^16 * ext_call.return_data[0] / 9975 * 10^16 != ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 < 9975 * 10^16 * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 != (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
        revert with 0, 'math-not-safe'
    if (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 < 10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
        revert with 0, 'math-not-safe'
    if not (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
        if 0 >= ext_call.return_data[64]:
            return 0
        if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - arg2 > (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'ds-math-sub-underflow'
        if ext_call.return_data[64] > ext_call.return_data[64]:
            revert with 0, 'ds-math-sub-underflow'
        if not ext_call.return_data[0]:
            return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - arg2, 
                   ext_call.return_data[64],
                   0,
                   1
        require ext_call.return_data[0]
        if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - arg2:
            revert with 0, 'math-not-safe'
        return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - arg2, 
               ext_call.return_data[64],
               ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + (-1 * arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
               1
    require (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18
    if arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 / (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18 != arg2:
        revert with 0, 'math-not-safe'
    if (arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 < arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18:
        revert with 0, 'math-not-safe'
    if (arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18 >= ext_call.return_data[64]:
        return 0
    if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - arg2 > (ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'ds-math-sub-underflow'
    if ext_call.return_data[64] - ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18) > ext_call.return_data[64]:
        revert with 0, 'ds-math-sub-underflow'
    if not ext_call.return_data[0]:
        return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - arg2, 
               ext_call.return_data[64] - ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
               0,
               1
    require ext_call.return_data[0]
    if ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / ext_call.return_data[0] != ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - arg2:
        revert with 0, 'math-not-safe'
    return ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - arg2, 
           ext_call.return_data[64] - ((arg2 * (10^18 * (9975 * 10^16 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 50 * 10^18 / 100 * 10^18) + 5 * 10^17 / 10^18),
           ((ext_call.return_data[32] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * ext_call.return_data[0]) + (-1 * arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18,
           1
}



}

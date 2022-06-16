contract main {




// =====================  Runtime code  =====================


const sub_000a08b0(?) = 0xcbc6a023eb975a1e2630223a7959988948e664f3

const sub_28476ec0(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const sub_4e60860e(?) = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c

const sub_69e894f5(?) = 0x9ae49c0d7f8f9ef4b864e004fe86ac8294e20950

const sub_78493617(?) = 0x587044b74004e3d5ef2d453b7f8d198d9e4cb558

const sub_9d95e98e(?) = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315

const sub_b047f9ef(?) = 0x4a487afd662c4f9deacc07a7b10cfb686b682a4

const sub_b3fd6724(?) = 0x13032deb2d37556cf49301f713e9d7e1d1a8b169

const sub_d92c20e3(?) = 0x39755357759ce0d7f32dc8dc45414cca409ae24e

const WETH = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const UNISWAP = 0x9cabec1ead1c0ba254b09efb3ee13841712be14

const DAI = 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359


uint256 sub_9ef4ca08;
uint256 sub_07e2da96;
uint256 sub_d27024a2;

function sub_07e2da96(?) payable {
    return sub_07e2da96
}

function sub_9ef4ca08(?) payable {
    return sub_9ef4ca08
}

function sub_d27024a2(?) payable {
    return sub_d27024a2
}

function _fallback() payable {
  stop
}

function sub_a29f045d(?) payable {
    return sub_9ef4ca08, sub_07e2da96, sub_d27024a2
}

function getEthBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}

function sub_7e4287be(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    staticcall 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1b2692b8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
    staticcall 0x9cabec1ead1c0ba254b09efb3ee13841712be14.getEthToTokenInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    return (10^18 * ext_call.return_data[0] / arg1)
}

function sub_a1821868(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
    staticcall 0x9cabec1ead1c0ba254b09efb3ee13841712be14.getTokenToEthOutputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    return (10^18 * ext_call.return_data[0] / arg1)
}

function sub_f23d68f2(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9ae49c0d7f8f9ef4b864e004fe86ac8294e20950)
    staticcall 0x9ae49c0d7f8f9ef4b864e004fe86ac8294e20950.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
            gas gas_remaining wei
           args 0, 4008636142, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[12 len 20], ext_call.return_data[32]
}

function sub_017e88fe(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    return (10^18 * ext_call.return_data[0] / arg1)
}

function sub_ebde603e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    return (10^18 * ext_call.return_data[0] / arg1)
}

function sub_2188d6e7(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x587044b74004e3d5ef2d453b7f8d198d9e4cb558)
    staticcall 0x587044b74004e3d5ef2d453b7f8d198d9e4cb558.getReturn(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    return (10^18 * ext_call.return_data[0] / arg1)
}

function sub_48418d77(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9ae49c0d7f8f9ef4b864e004fe86ac8294e20950)
    if block.number > sub_9ef4ca08 + 100:
        staticcall 0x9ae49c0d7f8f9ef4b864e004fe86ac8294e20950.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                gas gas_remaining wei
               args 0, 4008636142, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, arg1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
    staticcall 0x9ae49c0d7f8f9ef4b864e004fe86ac8294e20950.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
            gas gas_remaining wei
           args 0, 589693785, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    require arg1
    return ext_call.return_data[12 len 20], 10^18 * 10^18 * arg1 / ext_call.return_data[32] / arg1
}

function sub_35511ae4(?) payable {
    require calldata.size - 4 >= 32
    if block.number <= sub_9ef4ca08 + 100:
        require ext_code.size(0x587044b74004e3d5ef2d453b7f8d198d9e4cb558)
        staticcall 0x587044b74004e3d5ef2d453b7f8d198d9e4cb558.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, sub_9ef4ca08 * arg1 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0]:
            return (10^18 * sub_9ef4ca08 * arg1 / 10^18 / ext_call.return_data[0])
    else:
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x587044b74004e3d5ef2d453b7f8d198d9e4cb558)
        staticcall 0x587044b74004e3d5ef2d453b7f8d198d9e4cb558.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1:
            require ext_code.size(0x587044b74004e3d5ef2d453b7f8d198d9e4cb558)
            staticcall 0x587044b74004e3d5ef2d453b7f8d198d9e4cb558.getReturn(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 10^18 * ext_call.return_data[0] / arg1 * arg1 / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                return (10^18 * 10^18 * ext_call.return_data[0] / arg1 * arg1 / 10^18 / ext_call.return_data[0])
    revert
}

function getCurrentRate() payable {
    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
    staticcall 0x9cabec1ead1c0ba254b09efb3ee13841712be14.getEthToTokenInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
    staticcall 0x9cabec1ead1c0ba254b09efb3ee13841712be14.getTokenToEthOutputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * 10^18 * ext_call.return_data[0] / 10^18 >= 10^18 * ext_call.return_data[0] / 10^18
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x587044b74004e3d5ef2d453b7f8d198d9e4cb558)
    staticcall 0x587044b74004e3d5ef2d453b7f8d198d9e4cb558.getReturn(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x587044b74004e3d5ef2d453b7f8d198d9e4cb558)
    staticcall 0x587044b74004e3d5ef2d453b7f8d198d9e4cb558.getReturn(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * 10^18 * ext_call.return_data[0] / 10^18 >= 10^18 * ext_call.return_data[0] / 10^18
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * 10^18 * ext_call.return_data[0] / 10^18 >= 10^18 * ext_call.return_data[0] / 10^18
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    staticcall 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
            gas gas_remaining wei
           args 0x587044b74004e3d5ef2d453b7f8d198d9e4cb558
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint255(10^18 * ext_call.return_data[0] / 10^18)
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    staticcall 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
            gas gas_remaining wei
           args 0x39755357759ce0d7f32dc8dc45414cca409ae24e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint255(10^18 * ext_call.return_data[0] / 10^18)
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2
    require 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2
    if (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 >= 500:
        require (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000
        require (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100)
        sub_9ef4ca08 = (uint255(10^18 * ext_call.return_data[0] / 10^18) * 10000 * 5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100)) + (10000 * 5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100) * uint255(10^18 * ext_call.return_data[0] / 10^18)) + (uint255(10^18 * ext_call.return_data[0] / 10^18) * 10000 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100)) / 10000
        sub_07e2da96 = block.number
        sub_d27024a2 = (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100)
        return (uint255(10^18 * ext_call.return_data[0] / 10^18) * 10000 * 5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100)) + (10000 * 5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100) * uint255(10^18 * ext_call.return_data[0] / 10^18)) + (uint255(10^18 * ext_call.return_data[0] / 10^18) * 10000 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100)) / 10000, 
               (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 10000 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 / 100)
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1
    require 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1
    require (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000
    require (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (-(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100)
    sub_9ef4ca08 = (uint255(10^18 * ext_call.return_data[0] / 10^18) * 10000 * 5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (-(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100)) + (10000 * 5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (-(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100) * uint255(10^18 * ext_call.return_data[0] / 10^18)) + (uint255(10^18 * ext_call.return_data[0] / 10^18) * 10000 * -(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (-(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100)) / 10000
    sub_07e2da96 = block.number
    sub_d27024a2 = (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (-(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100)
    return (uint255(10^18 * ext_call.return_data[0] / 10^18) * 10000 * 5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (-(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100)) + (10000 * 5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (-(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100) * uint255(10^18 * ext_call.return_data[0] / 10^18)) + (uint255(10^18 * ext_call.return_data[0] / 10^18) * 10000 * -(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100 / (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (-(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100)) / 10000, 
           (5 * 10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 100) + (5 * eth.balance(0x9cabec1ead1c0ba254b09efb3ee13841712be14) / 100) + (-(50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2 * 50000 / (10000 * uint255(10^18 * ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18)) + (10^18 * ext_call.return_data[0] / uint255(10^18 * ext_call.return_data[0] / 10^18) / 2) - 1) - 10000) / 100)
}



}

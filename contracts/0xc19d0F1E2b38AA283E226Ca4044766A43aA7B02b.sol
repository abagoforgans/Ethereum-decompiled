contract main {




// =====================  Runtime code  =====================


#
#  - sub_04500f4e(?)
#
const WETH_ADDRESS = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const DAI_ADDRESS = 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359

const VOX_ADDRESS = 0x9b0f70df76165442ca6092939132bbaea77f2d7a

const MKR_ADDRESS = 0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2

const KYBER_WRAPPER = 0x283cc5c26e53d66ed2ea252d986f094b37e6e895

const PETH_ADDRESS = 0xf53ad2c6851052a81b42133467480961b2321c09

const ETHER_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const TUB_ADDRESS = 0x448a5065aebb8e423f0896e6c5d525c040f59af3


function _fallback() payable {
    revert
}

function sub_8ef12431(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.rap(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 == ext_call.return_data[0]
    require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 1000000000 * 10^18 * ext_call.return_data[0]
    require ext_call.return_data[0]
    if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.pip() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).read() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] / 2 >= 0
        if ext_call.return_data[0]:
            return (ext_call.return_data[0] / 2 / ext_call.return_data[0])
    else:
        if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            require arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] == arg3
            require (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 >= arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 == (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require (10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) >= 10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            if ext_call.return_data[0]:
                return ((10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    revert
}

function stabilityFeeInMkr(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.rap(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 == ext_call.return_data[0]
    require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 1000000000 * 10^18 * ext_call.return_data[0]
    require ext_call.return_data[0]
    if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.pep() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).peek() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] / 2 >= 0
        if ext_call.return_data[0]:
            return (ext_call.return_data[0] / 2 / ext_call.return_data[0])
    else:
        if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            require arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] == arg3
            require (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 >= arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.pep() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).peek() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 == (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require (10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) >= 10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            if ext_call.return_data[0]:
                return ((10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    revert
}

function maxFreeDai(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.ink(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.tag() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.mat() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
        require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 >= 10^18 * ext_call.return_data[0]
        require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 >= 0
        require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        require ext_code.size(arg1)
        call arg1.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0] <= (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        return (((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
    require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.mat() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
    require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 >= 10^18 * ext_call.return_data[0]
    require 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 == (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    require (10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) >= 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    require ext_code.size(arg1)
    call arg1.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ((10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0] <= (10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    return (((10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0])
}

function maxFreeCollateral(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.ink(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.mat() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
    require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 >= 10^18 * ext_call.return_data[0]
    if not (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        require ext_code.size(0x9b0f70df76165442ca6092939132bbaea77f2d7a)
        call 0x9b0f70df76165442ca6092939132bbaea77f2d7a.par() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require not 0 / ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.tag() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] / 2 >= 0
        require ext_call.return_data[0]
        require ext_call.return_data[0] - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) <= ext_call.return_data[0]
        return (ext_call.return_data[0] - (ext_call.return_data[0] / 2 / ext_call.return_data[0]))
    require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    require ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 == ext_call.return_data[0]
    require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 >= ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    require ext_code.size(0x9b0f70df76165442ca6092939132bbaea77f2d7a)
    call 0x9b0f70df76165442ca6092939132bbaea77f2d7a.par() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.tag() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] / 2 >= 0
        require ext_call.return_data[0]
        require ext_call.return_data[0] - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) <= ext_call.return_data[0]
        return (ext_call.return_data[0] - (ext_call.return_data[0] / 2 / ext_call.return_data[0]))
    require ext_call.return_data[0]
    require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18
    require ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) + 5 * 10^17 >= (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.tag() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^18 * ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 == ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
    require (10^18 * ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) >= 10^18 * ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
    require ext_call.return_data[0]
    require ext_call.return_data[0] - ((10^18 * ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= ext_call.return_data[0]
    return (ext_call.return_data[0] - ((10^18 * ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 5 * 10^17 / 10^18 * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]))
}

function sub_23a66a99(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf53ad2c6851052a81b42133467480961b2321c09)
    call 0xf53ad2c6851052a81b42133467480961b2321c09.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.ink(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    if arg2:
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), 0x283cc5c26e53d66ed2ea252d986f094b37e6e895, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x283cc5c26e53d66ed2ea252d986f094b37e6e895)
        call 0x283cc5c26e53d66ed2ea252d986f094b37e6e895.0x26680ef8 with:
             gas gas_remaining wei
            args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit() with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 == ext_call.return_data[0]
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 1000000000 * 10^18 * ext_call.return_data[0]
        require ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
             gas gas_remaining wei
            args ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.ink(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0xfe636f6c6c61746572616c206d75737420626520626967676572207468616e207374617274696e6720706f696e,
                        mem[209 len 19]
        emit Boost(arg2, ext_call.return_data[0], msg.sender);
    else:
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tag() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.mat() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
            require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 >= 10^18 * ext_call.return_data[0]
            require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 >= 0
            require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tab(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0] <= (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.ink(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), 0x283cc5c26e53d66ed2ea252d986f094b37e6e895, ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x283cc5c26e53d66ed2ea252d986f094b37e6e895)
            call 0x283cc5c26e53d66ed2ea252d986f094b37e6e895.0x26680ef8 with:
                 gas gas_remaining wei
                args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit() with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 == ext_call.return_data[0]
            require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 1000000000 * 10^18 * ext_call.return_data[0]
            require ext_call.return_data[0]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                 gas gas_remaining wei
                args ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.ink(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            45,
                            0xfe636f6c6c61746572616c206d75737420626520626967676572207468616e207374617274696e6720706f696e,
                            mem[209 len 19]
            emit Boost(((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2 / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0], ext_call.return_data[0], msg.sender);
        else:
            require ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.mat() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
            require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 >= 10^18 * ext_call.return_data[0]
            require 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 == (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require (10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) >= 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tab(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ((10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0] <= (10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.ink(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, ((10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
            call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), 0x283cc5c26e53d66ed2ea252d986f094b37e6e895, ((10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x283cc5c26e53d66ed2ea252d986f094b37e6e895)
            call 0x283cc5c26e53d66ed2ea252d986f094b37e6e895.0x26680ef8 with:
                 gas gas_remaining wei
                args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, ((10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit() with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 == ext_call.return_data[0]
            require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 1000000000 * 10^18 * ext_call.return_data[0]
            require ext_call.return_data[0]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                 gas gas_remaining wei
                args ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.ink(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            45,
                            0xfe636f6c6c61746572616c206d75737420626520626967676572207468616e207374617274696e6720706f696e,
                            mem[209 len 19]
            emit Boost(((10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + ((10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / (10^18 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ext_call.return_data[0], ext_call.return_data[0], msg.sender);
}



}

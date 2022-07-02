contract main {




// =====================  Runtime code  =====================


#
#  - shut(uint256 arg1)
#
const getUniswapMKRExchange = 0x2c4bd064b998838076fa341a83d007fc2fa50957

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

function open() {
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.0xfcfff16f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function give(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.give(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function draw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > 0:
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.cups(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'cup-not-owned'
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function wipe(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 'no-wipe-no-dai'
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gov() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.pep() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0x9cabec1ead1c0ba254b09efb3ee13841712be14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x9cabec1ead1c0ba254b09efb3ee13841712be14, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call address(ext_call.return_data[0]).peek() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.rap(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tab(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 != ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    require ext_call.return_data[0]
    if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        if ext_call.return_data[0] / 2 < 0:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(0x2c4bd064b998838076fa341a83d007fc2fa50957)
        staticcall 0x2c4bd064b998838076fa341a83d007fc2fa50957.getEthToTokenOutputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
    else:
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != arg2:
            revert with 0, 'math-not-safe'
        if (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if 10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 != (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        if (10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(0x2c4bd064b998838076fa341a83d007fc2fa50957)
        staticcall 0x2c4bd064b998838076fa341a83d007fc2fa50957.getEthToTokenOutputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args ((10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
    staticcall 0x9cabec1ead1c0ba254b09efb3ee13841712be14.getTokenToEthOutputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 + ext_call.return_data[0] < arg2:
        revert with 0, 'math-not-safe'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not-approved-yet'
    if ext_call.return_data[32]:
        if ext_call.return_data[0]:
            require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
            call 0x09cabec1ead1c0ba254b09efb3ee13841712be14.tokenToTokenSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[32], uint32(arg2 + ext_call.return_data[0]), 2775 * 10^14 * 24 * 3600, 1899063809, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.wipe(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_08185f93(?) {
    require calldata.size - 4 >= 64
    if arg2 > 0:
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000000000 * 10^18 * arg2 / 1000000000 * 10^18 != arg2:
            revert with 0, 'math-not-safe'
        if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * arg2:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            if 0 <= arg2:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
        else:
            require ext_call.return_data[0]
            if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 <= arg2:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value > 0:
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
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000000000 * 10^18 * msg.value / 1000000000 * 10^18 != msg.value:
            revert with 0, 'math-not-safe'
        if (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * msg.value:
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
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
            if 0 <= msg.value:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                    args arg1, (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                    args arg1, ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
        else:
            require ext_call.return_data[0]
            if (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
            if ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 <= msg.value:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                    args arg1, (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                    args arg1, ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_442bef30(?) payable {
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.0xfcfff16f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value > 0:
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
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'cup-not-owned'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000000000 * 10^18 * msg.value / 1000000000 * 10^18 != msg.value:
            revert with 0, 'math-not-safe'
        if (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * msg.value:
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
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
            if 0 <= msg.value:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                    args ext_call.return_data[0], (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                    args ext_call.return_data[0], ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
        else:
            require ext_call.return_data[0]
            if (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
            if ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 <= msg.value:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                    args ext_call.return_data[0], (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                    args ext_call.return_data[0], ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_ea16a202(?) payable {
    require calldata.size - 4 >= 96
    if arg3 <= 0:
        revert with 0, 'no-wipe-no-dai'
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gov() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.pep() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0x9cabec1ead1c0ba254b09efb3ee13841712be14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x9cabec1ead1c0ba254b09efb3ee13841712be14, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call address(ext_call.return_data[0]).peek() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.rap(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tab(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 != ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    require ext_call.return_data[0]
    if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        if ext_call.return_data[0] / 2 < 0:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(0x2c4bd064b998838076fa341a83d007fc2fa50957)
        staticcall 0x2c4bd064b998838076fa341a83d007fc2fa50957.getEthToTokenOutputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
    else:
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != arg3:
            revert with 0, 'math-not-safe'
        if (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if 10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 != (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        if (10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(0x2c4bd064b998838076fa341a83d007fc2fa50957)
        staticcall 0x2c4bd064b998838076fa341a83d007fc2fa50957.getEthToTokenOutputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args ((10^18 * (arg3 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
    staticcall 0x9cabec1ead1c0ba254b09efb3ee13841712be14.getTokenToEthOutputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 + ext_call.return_data[0] < arg3:
        revert with 0, 'math-not-safe'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not-approved-yet'
    if ext_call.return_data[32]:
        if ext_call.return_data[0]:
            require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
            call 0x09cabec1ead1c0ba254b09efb3ee13841712be14.tokenToTokenSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[32], uint32(arg3 + ext_call.return_data[0]), 2775 * 10^14 * 24 * 3600, 1899063809, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.wipe(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > 0:
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000000000 * 10^18 * arg2 / 1000000000 * 10^18 != arg2:
            revert with 0, 'math-not-safe'
        if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * arg2:
            revert with 0, 'math-not-safe'
        require ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            if 0 <= arg2:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
        else:
            require ext_call.return_data[0]
            if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 <= arg2:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
}



}

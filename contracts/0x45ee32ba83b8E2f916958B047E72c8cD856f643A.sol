contract main {




// =====================  Runtime code  =====================


const getPriceFeedAddress = 0x729d19f657bd0614b4985cf1d82531c67569197b

const getUniswapMKRExchange = 0x2c4bd064b998838076fa341a83d007fc2fa50957

const getAddressAdmin = 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638

const getUniswapDAIExchange = 0x9cabec1ead1c0ba254b09efb3ee13841712be14

const getDAIAddress = 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359

const getSaiTubAddress = 0x448a5065aebb8e423f0896e6c5d525c040f59af3


uint256 version;

function version() {
    return version
}

function _fallback() payable {
    revert
}

function sub_73435d12(?) {
    require calldata.size - 4 >= 32
    return arg1
}

function getRate() {
    require ext_code.size(0x729d19f657bd0614b4985cf1d82531c67569197b)
    call 0x729d19f657bd0614b4985cf1d82531c67569197b.peek() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
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

function sub_12c2b654(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.cups(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[12 len 20]
}

function sub_49181a1b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x2c4bd064b998838076fa341a83d007fc2fa50957)
    staticcall 0x2c4bd064b998838076fa341a83d007fc2fa50957.getTokenToEthInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4410ff00(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x2c4bd064b998838076fa341a83d007fc2fa50957)
    staticcall 0x2c4bd064b998838076fa341a83d007fc2fa50957.getTokenToEthInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
    staticcall 0x9cabec1ead1c0ba254b09efb3ee13841712be14.getEthToTokenInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_53530d73(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.sai() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x9cabec1ead1c0ba254b09efb3ee13841712be14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != -1:
        require ext_code.size(arg1)
        staticcall arg1.sai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x9cabec1ead1c0ba254b09efb3ee13841712be14, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'math-not-safe'
    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
    call 0x09cabec1ead1c0ba254b09efb3ee13841712be14.tokenToExchangeSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, arg2, 0x8000000000000000000000000000000000000000000000000000000000000000, 0x8000000000000000000000000000000000000000000000000000000000000000, block.timestamp + 100, 0x2c4bd064b998838076fa341a83d007fc2fa50957
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_91dbb313(?) {
    require calldata.size - 4 >= 64
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
        return 0
    require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    if arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != arg2:
        revert with 0, 'math-not-safe'
    if (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    return ((arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_08185f93(?) {
    require calldata.size - 4 >= 64
    if arg2 > 0:
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
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                if ext_call.return_data[0] != -1:
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                if ext_call.return_data[0] != -1:
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                if ext_call.return_data[0] != -1:
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                if ext_call.return_data[0] != -1:
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                gas gas_remaining wei
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
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.cups(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'cup-not-owned'
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            if ext_call.return_data[0] != -1:
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if 0 <= msg.value:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                if ext_call.return_data[0] != -1:
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                if ext_call.return_data[0] != -1:
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
        else:
            require ext_call.return_data[0]
            if (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            if ext_call.return_data[0] != -1:
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 <= msg.value:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                if ext_call.return_data[0] != -1:
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, (1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
                     gas gas_remaining wei
                    args (((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                if ext_call.return_data[0] != -1:
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * msg.value) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function wipe(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > 0:
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.pep() with:
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
            if ext_call.return_data[32]:
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] / 2 < 0:
                        revert with 0, 'math-not-safe'
                    require ext_call.return_data[0]
                    require ext_code.size(0x2c4bd064b998838076fa341a83d007fc2fa50957)
                    staticcall 0x2c4bd064b998838076fa341a83d007fc2fa50957.getTokenToEthInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
                    staticcall 0x9cabec1ead1c0ba254b09efb3ee13841712be14.getEthToTokenInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x2c4bd064b998838076fa341a83d007fc2fa50957
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[0] != -1:
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x2c4bd064b998838076fa341a83d007fc2fa50957, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x9cabec1ead1c0ba254b09efb3ee13841712be14
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != -1:
                        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x9cabec1ead1c0ba254b09efb3ee13841712be14, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp + 100 < block.timestamp:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
                    call 0x09cabec1ead1c0ba254b09efb3ee13841712be14.tokenToExchangeSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32], 0, 0x8000000000000000000000000000000000000000000000000000000000000000, block.timestamp + 100, 0x2c4bd064b998838076fa341a83d007fc2fa50957
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != arg2:
                revert with 0, 'math-not-safe'
            if (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.pep() with:
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
            if ext_call.return_data[32]:
                if ext_call.return_data[0]:
                    if 10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 != (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                        revert with 0, 'math-not-safe'
                    if (10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                        revert with 0, 'math-not-safe'
                    require ext_call.return_data[0]
                    require ext_code.size(0x2c4bd064b998838076fa341a83d007fc2fa50957)
                    staticcall 0x2c4bd064b998838076fa341a83d007fc2fa50957.getTokenToEthInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args ((10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
                    staticcall 0x9cabec1ead1c0ba254b09efb3ee13841712be14.getEthToTokenInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x2c4bd064b998838076fa341a83d007fc2fa50957
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[0] != -1:
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x2c4bd064b998838076fa341a83d007fc2fa50957, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x9cabec1ead1c0ba254b09efb3ee13841712be14
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != -1:
                        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x9cabec1ead1c0ba254b09efb3ee13841712be14, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp + 100 < block.timestamp:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(0x9cabec1ead1c0ba254b09efb3ee13841712be14)
                    call 0x09cabec1ead1c0ba254b09efb3ee13841712be14.tokenToExchangeSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[32], 0, 0x8000000000000000000000000000000000000000000000000000000000000000, block.timestamp + 100, 0x2c4bd064b998838076fa341a83d007fc2fa50957
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        if ext_call.return_data[0] != -1:
            staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gov() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        if ext_call.return_data[0] != -1:
            staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gov() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.wipe(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

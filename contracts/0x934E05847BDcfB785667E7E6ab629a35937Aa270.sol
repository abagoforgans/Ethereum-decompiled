contract main {




// =====================  Runtime code  =====================


const getSaiTubAddress = 0x448a5065aebb8e423f0896e6c5d525c040f59af3


function _fallback() payable {
    revert
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

function sub_4a9f22e4(?) {
    require calldata.size - 4 >= 32
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
    call address(ext_call.return_data[0]).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}

function sub_4837005a(?) {
    require calldata.size - 4 >= 32
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
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
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
            else:
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

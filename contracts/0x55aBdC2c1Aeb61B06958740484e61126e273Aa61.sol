contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 7613]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transferOwnership(address arg1, address arg2) {
    require ext_code.size(arg2)
    call arg2.transferOwnership(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function createContract(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    create contract with 0 wei
                    code: code.data[1247 len 6323], address(arg1), address(arg2), address(arg3), 10^18 * arg4, 10^18 * arg5, arg6
    require create.new_address
    return address(create.new_address)
}

function createTestNetContract(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    create contract with 0 wei
                    code: code.data[1247 len 6323], address(arg1), address(arg2), address(arg3), 10^18 * arg4, 10^18 * arg5, arg6
    require create.new_address
    return address(create.new_address)
}

function createMainNetContract(uint256 arg1, uint256 arg2) {
    create contract with 0 wei
                    code: code.data[1247 len 6323], 0x22c6731a21ad946bcd934f62f04b2d06ebfbedc9, 0x4a5467431b54c152e404eb702242e78030972de7, 0xdf398e0be9e0da2d8f8d687fd6b2c9082eefc29a, 10^18 * arg1, 10^18 * arg2, 258405312277978624000
    require create.new_address
    return address(create.new_address)
}

function migratePresaleBalances(address arg1, address arg2, address[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    s = 0
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _19 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 160] = 0
        mem[(32 * arg3.length) + 132] = address(_19)
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(_19)
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            mem[(32 * arg3.length) + 160] = 0
            mem[(32 * arg3.length) + 132] = address(_19)
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_19)
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] > 0:
                mem[(32 * arg3.length) + 128] = 0x1d1ada9000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3.length) + 132] = address(_19)
                mem[(32 * arg3.length) + 164] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.manuallyAssignTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(_19), ext_call.return_data[0]
                require ext_call.success
        s = _19
        idx = idx + 1
        continue 
}



}

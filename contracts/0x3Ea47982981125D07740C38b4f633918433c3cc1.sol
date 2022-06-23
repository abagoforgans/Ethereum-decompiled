contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 884]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function sub_09bb42ef(?) {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[stor0.length].field_0 = arg2
    if not stor0.length:
        require ext_code.size(arg1)
        call arg1.initWallet(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args 0, 96, 1, -1, stor0.length
    else:
        mem[228] = address(stor0.field_0)
        idx = 228
        s = 0
        while (32 * stor0.length) + 228 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(arg1)
        call arg1.initWallet(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args 0, 96, 1, -1, stor0.length, mem[228 len 32 * stor0.length]
    require ext_call.success
}

function sub_78dbc615(?) {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[stor0.length].field_0 = arg2
    if not stor0.length:
        require ext_code.size(arg1)
        call arg1.initWallet(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args 0, 96, 1, -1, stor0.length
    else:
        mem[228] = address(stor0.field_0)
        idx = 228
        s = 0
        while (32 * stor0.length) + 228 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(arg1)
        call arg1.initWallet(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args 0, 96, 1, -1, stor0.length, mem[228 len 32 * stor0.length]
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.kill(address arg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function transferMultisig(address arg1, address arg2, uint256 arg3) {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[stor0.length].field_0 = arg2
    if not stor0.length:
        require ext_code.size(arg1)
        call arg1.initWallet(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args 0, 96, 1, -1, stor0.length
    else:
        mem[228] = address(stor0.field_0)
        idx = 228
        s = 0
        while (32 * stor0.length) + 228 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(arg1)
        call arg1.initWallet(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args 0, 96, 1, -1, stor0.length, mem[228 len 32 * stor0.length]
    require ext_call.success
    require ext_code.size(arg1)
    if eth.balance(arg1) < arg3:
        call arg1.execute(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(eth.balance(arg1)), 96, 0, mem[228]
    else:
        if arg3:
            call arg1.execute(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining - 710 wei
                args 0, 0, uint32(arg3), 96, 0, mem[228]
        else:
            call arg1.execute(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining - 710 wei
                args 0, 0, uint32(eth.balance(arg1)), 96, 0, mem[228]
    require ext_call.success
}



}

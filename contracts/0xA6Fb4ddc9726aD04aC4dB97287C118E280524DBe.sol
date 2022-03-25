contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3364]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function getContracts() payable {
    if stor0.length:
        mem[160] = address(stor0.field_0)
        idx = 160
        s = 0
        while (32 * stor0.length) + 160 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0.length, data=mem[160 len 32 * stor0.length])
}

function deploy(address arg1, address arg2, address arg3) payable {
    create contract with 0 wei
                    code: code.data[690 len 2674]
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[stor0.length].field_0 = create.new_address or Mask(96, 160, stor0[stor0.length].field_0)
    emit Deploy(address(create.new_address));
    call address(create.new_address).configure(address rg1, address rg2, uint256 rg3, uint8 rg4, bytes32 rg5, bytes32 rg6) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(arg3), 0, 0, 0, 0
    require ext_call.success
    if ext_call.return_data[0]:
        call address(create.new_address).setOracle(address rg1) with:
             gas gas_remaining - 25050 wei
            args arg1
        require ext_call.success
    return bool(ext_call.return_data[0])
}



}

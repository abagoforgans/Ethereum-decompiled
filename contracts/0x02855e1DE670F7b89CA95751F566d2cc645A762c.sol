contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 903]




// =====================  Runtime code  =====================


array of uint256 stor-1;
array of uint256 stor2;
array of uint256 stor50;
array of uint256 stor51;

function checkStorage() {
    return stor50.length
}

function sub_60b25bb7(?) {
    stor51[stor50.length] = 1
    idx = stor50.length + 50
    while idx + 1 < stor50.length + 150:
        stor2[idx] = 1
        idx = idx + 1
        continue 
    stor50.length += 100
}

function withdraw(uint256 arg1) {
    if 0x2a9847093ad514639e8cdec960b5e51686960291 != tx.origin:
        if 0xc5ced6003d217c1f6fad143f2a6a414792a09602 != tx.origin:
            if 0x42d9d2e4fe1a81e976c83b50db6668e34aad8e24 != tx.origin:
                if 0x52db2fdc13d8031f149cdd68f11bc2c98cc80db3 != tx.origin:
                    require tx.origin == 0x1d32e874c371878edc595b89ab2720f718508546
    require block.gas_limit < 10 * 10^6
    if arg1 > 0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    if calldata.size > 0:
        if 0x2a9847093ad514639e8cdec960b5e51686960291 != tx.origin:
            if 0xc5ced6003d217c1f6fad143f2a6a414792a09602 != tx.origin:
                if 0x42d9d2e4fe1a81e976c83b50db6668e34aad8e24 != tx.origin:
                    if 0x52db2fdc13d8031f149cdd68f11bc2c98cc80db3 != tx.origin:
                        require tx.origin == 0x1d32e874c371878edc595b89ab2720f718508546
        require block.gas_limit < 10 * 10^6
        idx = Mask(24, 232, call.func_hash) >> 232
        s = call.func_hash
        while idx > 0:
            mem[96] = 0x88c2a0bf00000000000000000000000000000000000000000000000000000000
            mem[100] = idx
            call 0x06012c8cf97bead5deae237070f9587f8e7a266d.0x88c2a0bf with:
                 gas gas_remaining - 25710 wei
                args idx
            idx = Mask(24, 208, s) >> 208
            s = 16777216 * s
            continue 
        if stor50.length >= 1:
            stor50[stor50.length] = 0
            idx = stor50.length + 50
            while idx - 1 > stor50.length + 49:
                stor-1[idx] = 0
                idx = idx - 1
                continue 
            stor50.length--
}



}

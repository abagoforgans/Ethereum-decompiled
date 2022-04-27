contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 689]




// =====================  Runtime code  =====================


array of uint256 stor-10;
array of uint256 stor-9;
array of uint256 stor-8;
array of uint256 stor-7;
array of uint256 stor-6;
array of uint256 stor-5;
array of uint256 stor-4;
array of uint256 stor-3;
array of uint256 stor-2;
array of uint256 stor-1;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
array of uint256 stor11;
uint64 storFFFF;
uint256 storFFFF;

function _fallback() payable {
    if not calldata.size:
    if calldata.size < 8:
        if 1 != calldata.size:
            if calldata.size > 2:
                if 0xd51b5990951622c15de735f8510c7dbd6d3d3804 != tx.origin:
                selfdestruct(tx.origin)
            call 0xd51b5990951622c15de735f8510c7dbd6d3d3804 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return uint64(storFFFF)
        if uint256(storFFFF) < 65535:
            uint256(storFFFF) = 65535
        idx = 0
        while idx < Mask(8, -(('mask_shl', 256, 0, -3, ('cd', 0)), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('cd', 0)), 0) - 256:
            mem[0] = uint256(storFFFF)
            stor1[uint256(storFFFF)] = 1
            stor2[uint256(storFFFF)] = 1
            stor3[uint256(storFFFF)] = 1
            stor4[uint256(storFFFF)] = 1
            stor5[uint256(storFFFF)] = 1
            stor6[uint256(storFFFF)] = 1
            stor7[uint256(storFFFF)] = 1
            stor8[uint256(storFFFF)] = 1
            stor9[uint256(storFFFF)] = 1
            stor10[uint256(storFFFF)] = 1
            stor11[uint256(storFFFF)] = 1
            uint256(storFFFF) += 11
            idx = idx + 1
            continue 
    if calldata.size > 4:
        if 929888817 xor uint32(call.func_hash) > block.number:
        mem[160] = uint256(storFFFF)
        idx = 4
        s = 1191101067
        while idx < calldata.size and gas_remaining > 310000:
            call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
                 gas gas_remaining wei
                args (s xor Mask(32, 224, cd[idx]) >> 224)
            mem[100] = ext_call.return_data[0]
            if ext_call.success and mem[160] > 65535:
                stor[mem[160]] = 0
                stor-1[mem[160]] = 0
                stor-2[mem[160]] = 0
                stor-3[mem[160]] = 0
                stor-4[mem[160]] = 0
                stor-5[mem[160]] = 0
                stor-6[mem[160]] = 0
                stor-7[mem[160]] = 0
                stor-8[mem[160]] = 0
                stor-9[mem[160]] = 0
                stor-10[mem[160]] = 0
                mem[160] = mem[160] - 11
            idx = idx + 4
            s = s xor s xor Mask(32, 224, cd[idx]) >> 224
            continue 
        uint256(storFFFF) = mem[160]
    call 0xd51b5990951622c15de735f8510c7dbd6d3d3804 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return uint64(storFFFF)
}



}

